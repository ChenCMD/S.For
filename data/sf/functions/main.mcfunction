#生死判定
    tag @a remove Death
    execute as @a if data entity @s {Health:0.0f} run tag @s add Death

#クラフター作成
    execute as @a at @s if entity @e[type=item,distance=..6] as @e[type=item,nbt={Item:{id:"minecraft:crafting_table",Count:1b}},distance=..6] at @s if block ~ ~-0.15 ~ minecraft:enchanting_table unless entity @e[distance=..6,tag=Crafter] run tag @s add CrafterCreate
    execute as @e[type=item,tag=CrafterCreate] at @s run function sf:crafting_table/lv1
#クラフター破壊
    execute as @e[tag=Crafter,type=armor_stand] at @s unless block ~ ~ ~ minecraft:enchanting_table run function sf:crafting_table/break
#クラフターパーティクル
    execute as @e[tag=Crafter,type=armor_stand] at @s if entity @p[distance=..12] run particle minecraft:end_rod ~ ~0.5 ~ 0.35 0.35 0.35 0 1 normal
#装飾ガラス回転
    execute as @e[tag=Ornament,type=armor_stand] at @s if entity @p[distance=..12] run function sf:crafting_table/ornament/spin
#ゲーム進行度に応じた処理
    #強化MOBの出現抽選
        execute as @a[tag=!Death] at @s as @e[type=#sf:enemy,distance=..35,tag=!AlreadyDraw] run function sf:mob/draw