#tickの最初に入れる処理
    #生死判定
        tag @a remove Death
        execute as @a if data entity @s {Health:0.0f} run tag @s add Death


#こんばっとしすてむ
    #HurtEntity ここ以外で使っちゃだめだよ
        tag @e[type=!player,tag=!DummyDamage,nbt={HurtTime:10s}] add HurtEntity
    #演出用偽ダメージ
        execute as @e[tag=DummyDamage] run function sf:combat/final_process/dummy_damage
    #EventListener
        execute as @a[scores={FirstJoin_CB=1}] at @s run function sf:trigger/first_join
        execute as @a[scores={Respawn_CB=1}] run function sf:trigger/respawn
        execute as @a[scores={onDamage_CB=0..}] at @s run function sf:trigger/ondamage
        execute as @a[scores={onAttack_CB=0..}] at @s run function sf:trigger/onattack
        execute as @a[scores={UseBow_CB=1..}] at @s run function sf:trigger/bow/shot
        execute as @a[advancements={sf:support/arrow_hit=true}] at @s run function sf:trigger/bow/hit
        execute as @e[type=arrow,nbt={inGround:1b}] at @s run function sf:trigger/bow/inground
    #ダメージ表記
        execute if entity @e[tag=DamageLogs] run function sf:combat/common/damage_mes_tick
    #クールタイム
        execute as @a unless score @s W.CoolTime_CB matches -1 run function sf:combat/common/cooltime_decrement

#既存クラフトの上書き

#クラフター周りの処理
    #クラフター作成
        execute as @a at @s if entity @e[type=item,distance=..6] as @e[type=item,nbt={Item:{id:"minecraft:crafting_table",Count:1b}},distance=..6] at @s if block ~ ~-0.15 ~ enchanting_table unless entity @e[tag=Crafter,distance=..6] unless entity @e[type=item,tag=CrafterCreate] run tag @s add CrafterCreate
        execute as @e[type=item,tag=CrafterCreate] at @s run function sf:qtable/table_craft

#スキルツリー
    execute as @a[tag=!Death] at @s as @e[type=item_frame,nbt={Facing:1b,ItemRotation:1b,Item:{id:"minecraft:structure_block",tag:{SkillTree:1b}}}] at @s run function sf:skilltree/summon
    execute as @a[tag=!Death] at @s if entity @e[tag=ST-0,distance=..6]

#強化MOB周りの処理
    #抽選
        execute as @a[tag=!Death] at @s as @e[type=#sf:enemy,tag=!AlreadySet,distance=..35] run function sf:mob/set

#tickの最後にする処理
    #Sneak Bool型にするやつ
        scoreboard players reset @a Sneak_CB
    #HurtEntity消去
        tag @e[type=!player,tag=HurtEntity] remove HurtEntity