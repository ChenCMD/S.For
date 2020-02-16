tag @s add QT_Table_Place
# 作業台の設置を検知
execute as @a[tag=QT_Table_Place] at @s run summon area_effect_cloud ^ ^ ^ {Tags:[QT_Table_Place],Duration:0}
execute at @a[tag=QT_Table_Place] positioned ^ ^ ^-1 facing ^ ^ ^-1 run tp @e[tag=QT_Table_Place,type=area_effect_cloud,limit=1] ~ ~ ~ ~ ~
execute as @a[tag=QT_Table_Place] at @s anchored feet positioned ^ ^ ^5 rotated as @e[tag=QT_Table_Place,sort=nearest] positioned ^ ^ ^2.5 rotated as @e[tag=QT_Table_Place,sort=nearest] positioned ^ ^ ^1.25 rotated as @e[tag=QT_Table_Place,sort=nearest] positioned ^ ^ ^0.625 rotated as @e[tag=QT_Table_Place,sort=nearest] positioned ^ ^ ^0.3125 rotated as @e[tag=QT_Table_Place,sort=nearest] positioned ^ ^ ^0.15625 rotated as @e[tag=QT_Table_Place,sort=nearest] positioned ^ ^ ^0.078125 rotated as @e[tag=QT_Table_Place,sort=nearest] positioned ^ ^ ^0.0390625 rotated as @e[tag=QT_Table_Place,sort=nearest] positioned ^ ^ ^0.01953125 facing entity @s feet anchored eyes positioned ^ ^ ^ if block ~ ~ ~ crafting_table run tp @e[tag=QT_Table_Place,type=area_effect_cloud] ~ ~ ~ ~ ~
#諸々召喚
execute as @e[tag=QT_Table_Place,type=area_effect_cloud] at @s align xyz positioned ~0.5 ~ ~0.5 run function sf:qtable/summon
tag @a[tag=QT_Table_Place] remove QT_Table_Place
advancement revoke @s only sf:cb_place/advanced_crafting_table