data modify storage sf:data Calc.Base set from storage sf:data Calc.Player.AddHealth
scoreboard players operation $A Calc_CB = @s HealthMAX_CB
scoreboard players operation $B Calc_CB = $AddHealth GlobalVer_CB
function sf:system/calc/main
scoreboard players operation @s HealthMAX_CB = @s Calc_CB