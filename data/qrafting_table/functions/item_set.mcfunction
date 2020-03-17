#回転処理
execute align xz positioned ~0.5 ~-1 ~0.5 run tag @e[tag=QT_Core,distance=..0.001,limit=1] remove QT_RotLock
execute align xz positioned ~0.5 ~ ~0.5 as @e[tag=QT_Target,distance=..0.625,limit=9] at @s run function qrafting_table:rotation/rotation_lock
execute if entity @s[y_rotation=-45..45] align xz positioned ~0.5 ~-1 ~0.5 as @e[tag=QT_Core,tag=!QT_RotLock,distance=..0.001,limit=1] unless entity @s[y_rotation=0] at @s positioned ~ ~1 ~ run function qrafting_table:rotation/y0
execute if entity @s[y_rotation=45..135] align xz positioned ~0.5 ~-1 ~0.5 as @e[tag=QT_Core,tag=!QT_RotLock,distance=..0.001,limit=1] unless entity @s[y_rotation=90] at @s positioned ~ ~1 ~ run function qrafting_table:rotation/y90
execute if entity @s[y_rotation=135..225] align xz positioned ~0.5 ~-1 ~0.5 as @e[tag=QT_Core,tag=!QT_RotLock,distance=..0.001,limit=1] unless entity @s[y_rotation=180] at @s positioned ~ ~1 ~ run function qrafting_table:rotation/y180
execute if entity @s[y_rotation=-135..-45] align xz positioned ~0.5 ~-1 ~0.5 as @e[tag=QT_Core,tag=!QT_RotLock,distance=..0.001,limit=1] unless entity @s[y_rotation=-90] at @s positioned ~ ~1 ~ run function qrafting_table:rotation/y-90

#アイテムドロップ
execute unless entity @e[tag=QT_air,distance=..0.001,limit=1] run summon item ~ ~ ~ {Tags:[QT_TmpItem],Age:6000s,Item:{id:stone_button,Count:1b,tag:{display:{Name:'""'}}},PickupDelay:1s}
execute as @e[tag=QT_Target,distance=..0.001,limit=1] run data modify entity @e[tag=QT_TmpItem,distance=..0.001,limit=1] CustomName set from entity @s CustomName
execute as @e[tag=QT_TmpItem,distance=..0.001,limit=1] run function #qrafting_table:positions
data merge entity @e[tag=QT_TmpItem,nbt=!{Item:{id:"minecraft:stone_button",tag:{display:{Name:'""'}}}},distance=..0.001,limit=1] {Age:0s,Tags:[]}

#アイテム設置
execute positioned ~ ~-0.98 ~ if data entity @e[tag=QT_Det,distance=..0.001,limit=1] HandItems[1].id positioned ~ ~0.98 ~ run summon armor_stand ~ ~-1 ~ {Small:true,Marker:true,Invisible:true,Tags:["QT_Slot"]}
execute positioned ~ ~-0.98 ~ if data entity @e[tag=QT_Det,distance=..0.001,limit=1] HandItems[1].id positioned ~ ~0.98 ~ at @e[tag=QT_Target,distance=..0.001,limit=1] positioned ~ ~-1 ~ run tp @e[tag=QT_Slot,distance=..0.001,limit=1] ~ ~1 ~ ~ ~
execute positioned ~ ~-0.98 ~ as @e[tag=QT_Det,distance=..0.001,limit=1] if data entity @s ArmorItems[0].Count positioned ~ ~0.98 ~ run data modify entity @e[tag=QT_Slot,distance=..0.001,limit=1] HandItems[0] set from entity @s ArmorItems[0]
execute positioned ~ ~-0.98 ~ as @e[tag=QT_Det,distance=..0.001,limit=1] if data entity @s ArmorItems[1].Count positioned ~ ~0.98 ~ run data modify entity @e[tag=QT_Slot,distance=..0.001,limit=1] HandItems[0] set from entity @s ArmorItems[1]
execute positioned ~ ~-0.98 ~ as @e[tag=QT_Det,distance=..0.001,limit=1] if data entity @s ArmorItems[2].Count positioned ~ ~0.98 ~ run data modify entity @e[tag=QT_Slot,distance=..0.001,limit=1] HandItems[0] set from entity @s ArmorItems[2]
execute positioned ~ ~-0.98 ~ as @e[tag=QT_Det,distance=..0.001,limit=1] if data entity @s ArmorItems[3].Count positioned ~ ~0.98 ~ run data modify entity @e[tag=QT_Slot,distance=..0.001,limit=1] HandItems[0] set from entity @s ArmorItems[3]
execute positioned ~ ~-0.98 ~ as @e[tag=QT_Det,distance=..0.001,limit=1] if data entity @s HandItems[0].Count positioned ~ ~0.98 ~ run data modify entity @e[tag=QT_Slot,distance=..0.001,limit=1] HandItems[0] set from entity @s HandItems[0]
execute positioned ~ ~-0.98 ~ as @e[tag=QT_Det,nbt=!{HandItems:[{},{id:"minecraft:stone_button",tag:{display:{Name:'""'}}}]},distance=..0.001,limit=1] positioned ~ ~0.98 ~ run data modify entity @e[tag=QT_Slot,distance=..0.001,limit=1] HandItems[0] set from entity @s HandItems[1]

# アイテム配置
data merge entity @e[tag=QT_Target,tag=QT_1,distance=..0.001,limit=1] {Tags:["QT_Target","QT_1","QT_air"],CustomName:""}
data merge entity @e[tag=QT_Target,tag=QT_2,distance=..0.001,limit=1] {Tags:["QT_Target","QT_2","QT_air"],CustomName:""}
data merge entity @e[tag=QT_Target,tag=QT_3,distance=..0.001,limit=1] {Tags:["QT_Target","QT_3","QT_air"],CustomName:""}
data merge entity @e[tag=QT_Target,tag=QT_4,distance=..0.001,limit=1] {Tags:["QT_Target","QT_4","QT_air"],CustomName:""}
data merge entity @e[tag=QT_Target,tag=QT_5,distance=..0.001,limit=1] {Tags:["QT_Target","QT_5","QT_air"],CustomName:""}
data merge entity @e[tag=QT_Target,tag=QT_6,distance=..0.001,limit=1] {Tags:["QT_Target","QT_6","QT_air"],CustomName:""}
data merge entity @e[tag=QT_Target,tag=QT_7,distance=..0.001,limit=1] {Tags:["QT_Target","QT_7","QT_air"],CustomName:""}
data merge entity @e[tag=QT_Target,tag=QT_8,distance=..0.001,limit=1] {Tags:["QT_Target","QT_8","QT_air"],CustomName:""}
data merge entity @e[tag=QT_Target,tag=QT_9,distance=..0.001,limit=1] {Tags:["QT_Target","QT_9","QT_air"],CustomName:""}
execute as @e[tag=QT_Slot,distance=..0.001,limit=1] at @s run function qrafting_table:item_place

execute positioned ~ ~-0.98 ~ run data merge entity @e[tag=QT_Det,distance=..0.001,limit=1] {ArmorItems:[{},{},{},{}],HandItems:[{},{id:"minecraft:stone_button",Count:1b,tag:{display:{Name:'""'}}}]}

#レシピ
execute align xz positioned ~0.5 ~-1 ~0.5 run tag @e[tag=QT_Complete,distance=..0.001,limit=1] remove QT_Complete
execute align xz positioned ~0.5 ~0.3 ~0.5 run kill @e[tag=QT_Crafted,distance=..0.001,limit=1]
execute align xz positioned ~0.5 ~-1 ~0.5 as @e[tag=QT_Core,distance=..0.001,limit=1] positioned ~ ~1 ~ store result entity @s ArmorItems[0].tag.air byte 1 if entity @e[tag=QT_air,distance=..0.625,limit=9]
execute align xz positioned ~0.5 ~-1 ~0.5 as @e[tag=QT_Core,distance=..0.001,limit=1] positioned ~ ~1 ~ run function #qrafting_table:recipes
execute align xz positioned ~0.5 ~-1 ~0.5 as @e[tag=QT_Core,distance=..0.001,limit=1] positioned ~ ~1.3 ~ if entity @e[tag=QT_Crafted,distance=..0.001,limit=1] run tag @s add QT_Complete
