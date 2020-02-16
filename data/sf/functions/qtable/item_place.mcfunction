#名前登録
tag @e[tag=QT_Target,distance=..0.001,limit=1] remove QT_air
function #sf:qtable/displays
data modify entity @e[tag=QT_Target,distance=..0.001,limit=1] CustomName set from entity @s CustomName
function sf:qtable/items/vanilla
function #sf:qtable/items
execute as @e[tag=QT_Target,distance=..0.001,limit=1] run function #sf:qtable/item_tags

#ポーズ
function #sf:qtable/poses

#頭アイテム
execute as @e[tag=QT_Slot,distance=..0.001,limit=1] if data entity @s Pose.Head run tag @s add QT_Head
execute as @e[tag=QT_Head,distance=..0.001,limit=1] run data modify entity @s ArmorItems[3] set from entity @s HandItems[0]
execute as @e[tag=QT_Head,distance=..0.001,limit=1] run data modify entity @s HandItems[0] set value {}

#移動
function #sf:qtable/positions