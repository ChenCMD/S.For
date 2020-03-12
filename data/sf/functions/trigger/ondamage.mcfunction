#onDamage
    execute if entity @s[tag=!DummyDamage] run function sf:combat/final_process/mob_to_player
    tag @s remove DummyDamage
#reset
    scoreboard players reset @s onDamage_CB