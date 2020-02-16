particle underwater ~ ~0.15 ~ 0.03125 0 0.03125 0 100
#クリック判定のアマスタを召喚
execute positioned ~ ~-0.98 ~ unless entity @e[tag=QT_Det,distance=..0.001,limit=1] run summon armor_stand ~ ~ ~ {Tags:[QT_Det],Small:true,NoGravity:true,ShowArms:true,Invisible:true,Pose:{RightArm:[-25f,-90f,0f],LeftArm:[-25f,90f,0f]},HandItems:[{},{id:stone_button,Count:1b,tag:{display:{Name:'""'}}}]}
execute positioned ~ ~-0.98 ~ run tag @e[tag=QT_Det,distance=..0.001,limit=1] add QT_Keep

#クリック検知
execute positioned ~ ~-0.98 ~ if data entity @e[tag=QT_Det,distance=..0.001,limit=1] ArmorItems[0].Count positioned ~ ~0.98 ~ run function sf:qtable/item_set
execute positioned ~ ~-0.98 ~ if data entity @e[tag=QT_Det,distance=..0.001,limit=1] ArmorItems[1].Count positioned ~ ~0.98 ~ run function sf:qtable/item_set
execute positioned ~ ~-0.98 ~ if data entity @e[tag=QT_Det,distance=..0.001,limit=1] ArmorItems[2].Count positioned ~ ~0.98 ~ run function sf:qtable/item_set
execute positioned ~ ~-0.98 ~ if data entity @e[tag=QT_Det,distance=..0.001,limit=1] ArmorItems[3].Count positioned ~ ~0.98 ~ run function sf:qtable/item_set
execute positioned ~ ~-0.98 ~ if data entity @e[tag=QT_Det,distance=..0.001,limit=1] HandItems[0].Count positioned ~ ~0.98 ~ run function sf:qtable/item_set
execute positioned ~ ~-0.98 ~ unless data entity @e[tag=QT_Det,distance=..0.001,limit=1] {HandItems:[{},{id:"minecraft:stone_button",tag:{display:{Name:'""'}}}]} positioned ~ ~0.98 ~ run function sf:qtable/item_set
