#名前登録
tag @e[tag=QT_Target,distance=..0.001,limit=1] remove QT_air
function #qrafting_table:displays
data modify entity @e[tag=QT_Target,distance=..0.001,limit=1] CustomName set from entity @s CustomName
function qrafting_table:items/vanilla
function #qrafting_table:items
execute as @e[tag=QT_Target,distance=..0.001,limit=1] run function #qrafting_table:item_tags

#ポーズ
function #qrafting_table:poses

#頭アイテム
execute as @e[tag=QT_Slot,distance=..0.001,limit=1] if data entity @s Pose.Head run tag @s add QT_Head
execute as @e[tag=QT_Head,distance=..0.001,limit=1] run data modify entity @s ArmorItems[3] set from entity @s HandItems[0]
execute as @e[tag=QT_Head,distance=..0.001,limit=1] run data modify entity @s HandItems[0] set value {}

#移動
function #qrafting_table:positions