execute if entity @s[type=!skeleton,type=!stray,type=!wither_skeleton,type=!wither,type=!zombie,type=!husk,type=!zombie_pigman,type=!zombie_villager,type=!zombie_horse,type=!skeleton_horse,type=!phantom] run effect give @s minecraft:instant_damage 1 0 true
execute unless entity @s[type=!skeleton,type=!stray,type=!wither_skeleton,type=!wither,type=!zombie,type=!husk,type=!zombie_pigman,type=!zombie_villager,type=!zombie_horse,type=!skeleton_horse,type=!phantom] run effect give @s minecraft:instant_health 1 0 true
tag @s[type=!player] remove DummyDamage