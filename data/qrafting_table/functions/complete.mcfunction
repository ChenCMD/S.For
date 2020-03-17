#消費されたアイテムを消去
tag @e[tag=QT_Target,distance=..0.625,limit=9] add QT_complete
execute as @e[tag=QT_Target,distance=..0.625,limit=9] at @s run function #qrafting_table:positions
tag @e[tag=QT_Complete,distance=..0.625,limit=9] remove QT_complete

#リサイクル
execute as @e[tag=QT_Target,distance=..0.625,limit=9] at @s positioned ~ ~-1 ~ run function #qrafting_table:recycle_items
execute at @e[tag=QT_Target,distance=..0.625,limit=9] positioned ~ ~-1 ~ run tp @e[tag=QT_Slot,distance=..0.001,limit=1] ~ ~1 ~ ~ ~

data merge entity @e[tag=QT_Target,tag=QT_1,distance=..0.625,limit=1] {Tags:["QT_Target","QT_1","QT_air"],CustomName:""}
data merge entity @e[tag=QT_Target,tag=QT_2,distance=..0.625,limit=1] {Tags:["QT_Target","QT_2","QT_air"],CustomName:""}
data merge entity @e[tag=QT_Target,tag=QT_3,distance=..0.625,limit=1] {Tags:["QT_Target","QT_3","QT_air"],CustomName:""}
data merge entity @e[tag=QT_Target,tag=QT_4,distance=..0.625,limit=1] {Tags:["QT_Target","QT_4","QT_air"],CustomName:""}
data merge entity @e[tag=QT_Target,tag=QT_5,distance=..0.625,limit=1] {Tags:["QT_Target","QT_5","QT_air"],CustomName:""}
data merge entity @e[tag=QT_Target,tag=QT_6,distance=..0.625,limit=1] {Tags:["QT_Target","QT_6","QT_air"],CustomName:""}
data merge entity @e[tag=QT_Target,tag=QT_7,distance=..0.625,limit=1] {Tags:["QT_Target","QT_7","QT_air"],CustomName:""}
data merge entity @e[tag=QT_Target,tag=QT_8,distance=..0.625,limit=1] {Tags:["QT_Target","QT_8","QT_air"],CustomName:""}
data merge entity @e[tag=QT_Target,tag=QT_9,distance=..0.625,limit=1] {Tags:["QT_Target","QT_9","QT_air"],CustomName:""}
execute as @e[tag=QT_Slot,distance=..0.625,limit=9] at @s run function qrafting_table:item_place
tag @s remove QT_RotLock
execute as @e[tag=QT_Target,distance=..0.625,limit=9] at @s run function qrafting_table:rotation/rotation_lock
tag @s remove QT_Complete