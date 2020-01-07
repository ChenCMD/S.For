# say ダメージ計算
#Tag add
    tag @e[tag=HurtEntity,sort=nearest] add Target
    tag @s add Attacker
#レベルによるATK_CBボーナス
    execute if entity @s[tag=!NoCT,tag=!NoBowCT] unless entity @s[scores={DamageType_CB=1},nbt=!{SelectedItem:{}}] run scoreboard players operation $RegisterATK GlobalVer_CB = Level GlobalVer_CB
    execute if entity @s[tag=!NoCT,tag=!NoBowCT] unless entity @s[scores={DamageType_CB=1},nbt=!{SelectedItem:{}}] run scoreboard players operation $RegisterATK GlobalVer_CB /= $2 GlobalVer_CB
    execute if entity @s[tag=!NoCT,tag=!NoBowCT] unless entity @s[scores={DamageType_CB=1},nbt=!{SelectedItem:{}}] run scoreboard players operation @s ATK_CB += $RegisterATK GlobalVer_CB
#MobにATK_CBを移行
    scoreboard players operation @e[tag=Target] ATK_CB = @s ATK_CB
#PlayerATK_CBリセット
    scoreboard players reset $RegisterATK GlobalVer_CB
    scoreboard players reset @s ATK_CB
#アルテリオス計算 防御貫通武器を持っている場合スキップ
    execute unless entity @s[scores={DamageType_CB=1},nbt={SelectedItem:{tag:{DEFPiercing:1b}}}] unless entity @s[scores={DamageType_CB=2},tag=DEFPiercing] as @e[tag=Target] run scoreboard players operation @s ATK_CB -= @s MobDEF_CB
#クリティカル処理
    execute if entity @s[tag=!NoCT,tag=!NoBowCT] unless entity @s[scores={DamageType_CB=1},nbt=!{SelectedItem:{}}] run function sf:rng/generation
    execute if entity @s[tag=!NoCT,tag=!NoBowCT] unless entity @s[scores={DamageType_CB=1},nbt=!{SelectedItem:{}}] run scoreboard players operation @s Random_CB %= $100 GlobalVer_CB
    execute if entity @s[tag=!NoCT,tag=!NoBowCT] unless entity @s[scores={DamageType_CB=1},nbt=!{SelectedItem:{}}] if score @s Random_CB < $CriticalRate GlobalVer_CB run scoreboard players operation @e[tag=Target] ATK_CB *= $CriticalCorrection GlobalVer_CB
    execute if entity @s[tag=!NoCT,tag=!NoBowCT] unless entity @s[scores={DamageType_CB=1},nbt=!{SelectedItem:{}}] if score @s Random_CB < $CriticalRate GlobalVer_CB run scoreboard players operation @e[tag=Target] ATK_CB -= Level GlobalVer_CB
    execute if entity @s[tag=!NoCT,tag=!NoBowCT] unless entity @s[scores={DamageType_CB=1},nbt=!{SelectedItem:{}}] if score @s Random_CB < $CriticalRate GlobalVer_CB at @a[tag=Attacker] run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1 1.8
#ダメージが0以下の場合 1にセット
    scoreboard players set @e[tag=Target,scores={ATK_CB=..0}] ATK_CB 1
#体力減算処理
    execute as @e[tag=Target] run scoreboard players operation @s MobHealth_CB -= @s ATK_CB
#体力が0以下の場合 0にセット
    scoreboard players set @e[tag=Target,scores={MobHealth_CB=..0}] MobHealth_CB 0
#ダメージログ
    #execute as @e[tag=Target] run tellraw @a[tag=Attacker] ["",{"text":"* "},{"score":{"name":"@s","objective":"ATK_CB"},"color":"red"},{"translate":"player.damage.log","color":"green"},{"text":" <"},{"score":{"name":"@s","objective":"MobHealth_CB"},"color":"aqua"},{"text":">"}]
    execute if entity @s[tag=!NoCT,tag=!NoBowCT] unless entity @s[scores={DamageType_CB=1},nbt=!{SelectedItem:{}}] if score @s Random_CB < $CriticalRate GlobalVer_CB as @e[tag=Target] at @s rotated as @a[tag=Attacker] rotated ~ 0 run function sf:combat/final_process/damage_mes_crit
    execute as @e[tag=Target] at @s rotated as @a[tag=Attacker] rotated ~ 0 run function sf:combat/final_process/damage_mes
#MobATK_CBリセット
    scoreboard players reset @e[tag=Target] ATK_CB
#体力が0のMobをKill
    execute as @e[tag=Target,scores={MobHealth_CB=0}] run function sf:combat/final_process/death_mob
#リセット
    tag @s[scores={DamageType_CB=1}] remove NoCT
    tag @s[scores={DamageType_CB=2}] remove NoBowCT
    tag @e[tag=Target] remove Target
    tag @s remove Attacker