# ピストン対策
execute as @e[tag=QT_Core] at @s run function sf:qtable/piston/piston
# スロット選択
execute as @a[gamemode=!spectator] at @s anchored eyes positioned ^ ^ ^1.5 if entity @e[tag=QT_Target,distance=..1.5,limit=1] positioned ^ ^ ^-1.5 positioned ~ ~0.075 ~ run function sf:qtable/aim

# 完成品
execute as @e[tag=QT_Complete] at @s positioned ~ ~1.3 ~ unless entity @e[tag=QT_Crafted,distance=..0.001,limit=1] positioned ~ ~-0.3 ~ run function sf:qtable/complete
execute as @e[tag=QT_Crafted] at @s run function sf:qtable/crafted

# 暗化防止
execute as @e[tag=QT_Slot] run data merge entity @s {Fire:2s}

# リセット
kill @e[tag=QT_Det,tag=!QT_Keep]
tag @e[tag=QT_Keep] remove QT_Keep
execute as @e[tag=QT_Core] at @s unless block ~ ~ ~ crafting_table unless block ~ ~ ~ moving_piston run function sf:qtable/delete
clear @a stone_button{display:{Name:""}}