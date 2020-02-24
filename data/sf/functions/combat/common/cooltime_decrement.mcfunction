scoreboard players remove @s[scores={W.CoolTime_CB=0..}] W.CoolTime_CB 1
execute unless score @s W.CoolTime_CB matches 0.. at @s run particle minecraft:dust 0.4941 1.000 0.4392 0.4 ~ ~1.5 ~ 0.2 0.2 0.2 0 10 normal @s
execute unless score @s W.CoolTime_CB matches 0.. at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.4 1.4
execute unless score @s W.CoolTime_CB matches 0.. run scoreboard players set @s W.CoolTime_CB -1