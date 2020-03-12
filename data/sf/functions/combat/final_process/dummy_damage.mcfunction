#アンデットか否かに応じてダメージを与える
    execute if entity @s[type=#sf:undied] run effect give @s minecraft:instant_damage 1 0 true
    execute unless entity @s[type=#sf:undied] run effect give @s minecraft:instant_health 1 0 true
#reset
    tag @s[type=!player] remove DummyDamage