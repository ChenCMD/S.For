# say BowAttack処理
#BowATKとATK同期
scoreboard players operation @s ATK_CB = @s BowATK_CB
#ダメージタイプ
scoreboard players set @s DamageType_CB 2
#武器のNBTからCoolTimeデータを抽出 = この数値分クールタイムが発生する
execute store result score @s W.CoolTime_CB run data get entity @s SelectedItem.tag.CoolTime
#ダメージ処理functionへ
function sf:combat/final_process/player_to_mob
#リセット
scoreboard players reset @s BowATK_CB