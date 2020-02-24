# say ダメージ計算
#Tag add
    tag @e[tag=HurtEntity,sort=nearest] add Target
    tag @s add Attacker
    execute if score $DamageType_CB GlobalVer_CB matches 1 if entity @s[nbt=!{SelectedItem:{}}] run tag @s add NoHandItem

#DEBUG
    tellraw @a [{"text":"ATK: "},{"score":{"objective":"ATK_CB","name":"@s"}}]
    tellraw @a[tag=NoHandItem] [{"text":"NoHandItem: true"}]
    tellraw @a[tag=!NoHandItem] [{"text":"NoHandItem: false"}]

#レベルによるATK_CBボーナス
    execute if entity @s[tag=!NoCT,tag=!NoBowCT] if entity @s[tag=!NoHandItem] run scoreboard players operation $RegisterATK GlobalVer_CB = Level GlobalVer_CB
    execute if entity @s[tag=!NoCT,tag=!NoBowCT] if entity @s[tag=!NoHandItem] run scoreboard players operation $RegisterATK GlobalVer_CB /= $2 Const_CB
    execute if entity @s[tag=!NoCT,tag=!NoBowCT] if entity @s[tag=!NoHandItem] run scoreboard players operation @s ATK_CB += $RegisterATK GlobalVer_CB
#MobにATK_CBを移行
    scoreboard players operation @e[tag=Target] ATK_CB = @s ATK_CB
#PlayerATK_CBリセット
    scoreboard players reset $RegisterATK GlobalVer_CB
    scoreboard players reset @s ATK_CB
#クリティカル処理
    execute if entity @s[tag=!NoCT,tag=!NoBowCT] if entity @s[tag=!NoHandItem] run function sf:system/rng/generation
    execute if entity @s[tag=!NoCT,tag=!NoBowCT] if entity @s[tag=!NoHandItem] run scoreboard players operation @s Random_CB %= $100 Const_CB
    execute if entity @s[tag=!NoCT,tag=!NoBowCT] if entity @s[tag=!NoHandItem] if score @s Random_CB < @s CRITRate_CB run scoreboard players operation @e[tag=Target] ATK_CB *= $CriticalCorrection GlobalVer_CB
    execute if entity @s[tag=!NoCT,tag=!NoBowCT] if entity @s[tag=!NoHandItem] if score @s Random_CB < @s CRITRate_CB run scoreboard players operation @e[tag=Target] ATK_CB -= Level GlobalVer_CB
    execute if entity @s[tag=!NoCT,tag=!NoBowCT] if entity @s[tag=!NoHandItem] if score @s Random_CB < @s CRITRate_CB at @a[tag=Attacker] run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1 1.8
#ダメージが0以下の場合 1にセット
    scoreboard players set @e[tag=Target,scores={ATK_CB=..0}] ATK_CB 1
#体力減算処理
    execute as @e[tag=Target] run scoreboard players operation @s MobHealth_CB -= @s ATK_CB
#体力が0以下の場合 0にセット
    scoreboard players set @e[tag=Target,scores={MobHealth_CB=..0}] MobHealth_CB 0
#ダメージログ
    #execute as @e[tag=Target] run tellraw @a[tag=Attacker] ["",{"text":"* "},{"score":{"name":"@s","objective":"ATK_CB"},"color":"red"},{"translate":"player.damage.log","color":"green"},{"text":" <"},{"score":{"name":"@s","objective":"MobHealth_CB"},"color":"aqua"},{"text":">"}]
    execute if entity @s[tag=!NoCT,tag=!NoBowCT] if entity @s[tag=!NoHandItem] if score @s Random_CB < @s CRITRate_CB run tag @s add crit
    execute if entity @s[tag=!crit] as @e[tag=Target] at @s rotated as @a[tag=Attacker] rotated ~ 0 positioned ^-0.5 ^1.9 ^0.1 run function sf:combat/final_process/damage_mes
    execute if entity @s[tag=crit] as @e[tag=Target] at @s rotated as @a[tag=Attacker] rotated ~ 0 positioned ^-0.5 ^1.9 ^0.1 run function sf:combat/final_process/damage_mes_crit
    tag @s remove crit
#MobATK_CBリセット
    scoreboard players reset @e[tag=Target] ATK_CB
#体力が0のMobをKill
    execute as @e[tag=Target,scores={MobHealth_CB=0}] run function sf:combat/final_process/death_mob
#リセット
    execute if score $DamageType_CB GlobalVer_CB matches 1 run tag @s remove NoCT
    execute if score $DamageType_CB GlobalVer_CB matches 2 run tag @s remove NoBowCT
    tag @s remove NoHandItem
    tag @e[tag=Target] remove Target
    tag @s remove Attacker