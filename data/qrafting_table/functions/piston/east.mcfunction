tag @e[tag=QT_Target,distance=..0.625,limit=9] add QT_piston_east
execute as @e[tag=QT_Target,distance=..0.625,limit=9] at @s run function #qrafting_table:positions
tag @e[tag=QT_Target,distance=..0.625,limit=9] remove QT_piston_east
execute as @e[tag=QT_Target,distance=..0.625,limit=9] at @s run tp @s ~1 ~ ~
execute positioned ~ ~0.3 ~ as @e[tag=QT_Crafted,distance=..0.001,limit=1] at @s run tp @s ~1 ~ ~
execute positioned ~ ~-1 ~ run tp @s ~1 ~ ~