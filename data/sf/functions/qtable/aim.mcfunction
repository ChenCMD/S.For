#スロットを見つけるまでループ
execute if block ~ ~ ~ #sf:qtable/air at @e[tag=QT_Target,distance=..0.125,limit=1] run function sf:qtable/slot_select
execute unless entity @e[tag=QT_Target,distance=..0.125,limit=1] if entity @s[distance=..3] positioned ^ ^ ^0.125 run function sf:qtable/aim