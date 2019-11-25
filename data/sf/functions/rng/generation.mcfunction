scoreboard players operation $Rand_X Random_CB += $Rand_Modifier Random_CB
scoreboard players operation $Rand_X Random_CB *= $Rand_A Random_CB
scoreboard players operation $Rand_X Random_CB %= $Rand_M Random_CB
scoreboard players operation @s Random_CB = $Rand_X Random_CB
scoreboard players add $RandUseCount Random_CB 1
execute if score $RandUseCount Random_CB matches 10.. at @s positioned ~ ~200 ~ run function sf:rng/modifier_gene