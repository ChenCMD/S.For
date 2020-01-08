scoreboard players operation @s PerHealth_CB = @s Health_CB
scoreboard players operation @s PerHealth_CB *= $20 GlobalVer_CB
scoreboard players operation @s PerHealth_CB /= @s HealthMAX_CB
scoreboard players set @s[scores={PerHealth_CB=0},tag=!Death] PerHealth_CB 1
execute if score @s PerHealth_CB matches 11.. run team join HP-High
execute if score @s PerHealth_CB matches 06..10 run team join HP-Medium
execute if score @s PerHealth_CB matches 01..05 run team join HP-Low
execute if score @s PerHealth_CB matches 0 run team join Died