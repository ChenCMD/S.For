# say Attack処理
#武器のNBTからATKデータを抽出
execute if entity @s[scores={W.CoolTime_CB=-1}] store result score @s ATK_CB run data get entity @s SelectedItem.tag.ATK
#クールタイムが終わってなかった場合 ATKに1をset
execute unless entity @s[scores={W.CoolTime_CB=-1}] run scoreboard players set @s ATK_CB 1
execute unless entity @s[scores={W.CoolTime_CB=-1}] run tag @s add NoCT
#武器のNBTからCoolTimeデータを抽出 = この数値分クールタイムが発生する
execute store result score @s W.CoolTime_CB run data get entity @s SelectedItem.tag.CoolTime
#ダメージタイプ
scoreboard players set @s DamageType_CB 1
#ダメージ処理functionへ
function sf:combat/final_process/player_to_mob
#ダメージを与えたことを無かったことに
scoreboard players reset @s onAttack_CB