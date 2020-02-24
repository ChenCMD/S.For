# say BowAttack処理
#Bowとデフォ同期
scoreboard players operation @s ATK_CB = @s BowATK_CB
scoreboard players operation @s CRITRate_CB = @s BowCRITRate_CB
scoreboard players operation @s W.CoolTime_CB = @s W.PreCoolTime_CB
#ダメージタイプ
scoreboard players set $DamageType_CB GlobalVer_CB 2
#ダメージ処理functionへ
function sf:combat/final_process/player_to_mob
#リセット
scoreboard players reset @s BowATK_CB