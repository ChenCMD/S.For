#スロットを見つけるまでループ
execute if block ~ ~ ~ #qrafting_table:air at @e[tag=QT_Target,distance=..0.125,limit=1] run function qrafting_table:slot_select
execute unless entity @e[tag=QT_Target,distance=..0.125,limit=1] if entity @s[distance=..3] positioned ^ ^ ^0.125 run function qrafting_table:aim