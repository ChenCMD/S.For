#tickの最初に入れる処理
    #生死判定
        tag @a remove Death
        execute as @a if data entity @s {Health:0.0f} run tag @s add Death


#こんばっとしすてむ
    #HurtEntity ここ以外で使っちゃだめだよ
        tag @e[type=!player,nbt={HurtTime:10s},tag=!DummyDamage] add HurtEntity
    #演出用偽ダメージ
        execute as @e[tag=DummyDamage] run function sf:combat/final_process/dummy_damage
    #EventListener
        execute as @a[scores={FirstJoin_CB=1}] at @s run function sf:trigger/first_join
        execute as @a[scores={Respawn_CB=1}] run function sf:trigger/respawn
        execute as @a[scores={onDamage_CB=0..}] at @s run function sf:trigger/ondamage
        execute as @a[scores={onAttack_CB=0..}] at @s run function sf:trigger/onattack
        execute as @a[scores={UseBow_CB=1..}] at @s run function sf:trigger/bow/shot
        execute as @a[advancements={sf:support/arrow_hit=true}] at @s run function sf:trigger/bow/hit
        execute as @a[scores={Death_CB=1..}] at @s run function sf:trigger/death
        execute as @e[nbt={inGround:1b},type=arrow] at @s run function sf:trigger/bow/inground
    #装備
        execute as @a[advancements={sf:support/armor_changed=true}] run function sf:items/armor_check
    #ダメージ表記
        execute if entity @e[tag=DamageLogs] run function sf:combat/common/damage_mes_tick
    #クールタイム
        execute as @a unless score @s W.CoolTime_CB matches -1 run function sf:combat/common/cooltime_decrement

#既存クラフトの上書き


#クラフター周りの処理
    #クラフター作成
        execute as @a at @s if entity @e[type=item,distance=..6] as @e[type=item,nbt={Item:{id:"minecraft:crafting_table",Count:1b}},distance=..6] at @s if block ~ ~-0.15 ~ minecraft:enchanting_table unless entity @e[distance=..6,tag=Crafter] run tag @s add CrafterCreate
        execute as @e[type=item,tag=CrafterCreate] at @s run function sf:crafting_table/lv1
    #クラフター破壊
        execute as @e[tag=Crafter,type=armor_stand] at @s unless block ~ ~ ~ minecraft:enchanting_table run function sf:crafting_table/break
    #クラフターパーティクル
        execute as @e[tag=Crafter,type=armor_stand] at @s if entity @p[distance=..12] run particle end_rod ~ ~0.5 ~ 0.35 0.35 0.35 0 1 normal
    #装飾ガラス回転
        execute as @e[tag=Ornament,type=armor_stand] at @s if entity @p[distance=..12] run function sf:crafting_table/ornament/spin


#強化MOB周りの処理
    #抽選
        execute as @a[tag=!Death] at @s as @e[type=!player,distance=..35,tag=!AlreadySet] run function sf:mob/set

#tickの最後にする処理
    #Sneak Bool型にするやつ
        scoreboard players reset @a Sneak_CB
    #HurtEntity消去
        tag @e[type=!player,tag=HurtEntity] remove HurtEntity