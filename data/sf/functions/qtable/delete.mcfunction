#アイテムドロップ
execute positioned ~ ~1 ~ at @e[tag=QT_Target,tag=!QT_air,distance=..0.8,limit=9] run summon item ~ ~ ~ {Tags:[QT_DropItem],Item:{id:stone_button,Count:1b,tag:{display:{Name:""}}},PickupDelay:1s}
execute positioned ~ ~1 ~ as @e[tag=QT_Target,tag=!QT_air,distance=..0.8,limit=9] at @s run data modify entity @e[tag=QT_DropItem,distance=..0.001,limit=1] CustomName set from entity @s CustomName
execute positioned ~ ~1 ~ at @e[tag=QT_Target,distance=..0.625,limit=9] as @e[tag=QT_DropItem,distance=..0.001,limit=1] run function #sf:qtable/positions
kill @e[type=item,nbt={Item:{id:"minecraft:crafting_table",Count:1b},Age:0}]
loot spawn ~ ~ ~ loot sf:blocks/advanced_crafting_table
#スロットをkill
execute positioned ~ ~1 ~ as @e[tag=QT_Target,distance=..0.625,limit=9] run tag @s add QT_Delete
execute positioned ~ ~1 ~ as @e[tag=QT_Target,distance=..0.625,limit=9] at @s run function #sf:qtable/positions
#ターゲットをkill
execute positioned ~ ~1 ~ run kill @e[tag=QT_Target,distance=..0.625,limit=9]
execute positioned ~ ~1.3 ~ run kill @e[tag=QT_Crafted,distance=..0.001,limit=1]
#コアをkill
kill @s