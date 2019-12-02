execute if entity @s[tag=!DummyDamage] run function sf:combat/final_process/mob_to_player
scoreboard players reset @s[tag=DummyDamage] onDamage_CB
tag @s remove DummyDamage