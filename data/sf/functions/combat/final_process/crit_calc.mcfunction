data modify storage sf:data Calc.Base set from storage sf:data Calc.Player.Critical
scoreboard players operation $A Calc_CB = @s ATK_CB
scoreboard players operation $B Calc_CB = $CriticalCorrection GlobalVer_CB
scoreboard players operation $C Calc_CB = $Level GlobalVer_CB
function sf:system/calc/main
scoreboard players operation @s ATK_CB = @s Calc_CB