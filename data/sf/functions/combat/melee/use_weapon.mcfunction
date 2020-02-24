# say Attack処理
#武器のNBTからATKデータを抽出
execute if entity @s[scores={W.CoolTime_CB=-1}] store result score @s ATK_CB run data get entity @s SelectedItem.tag.ATK
execute if entity @s[scores={W.CoolTime_CB=-1}] store result score @s CRITRate_CB run data get entity @s SelectedItem.tag.CRIT
#クールタイムが終わってなかった場合 ATKに1をset
execute unless entity @s[scores={W.CoolTime_CB=-1}] run scoreboard players set @s ATK_CB 1
execute unless entity @s[scores={W.CoolTime_CB=-1}] run tag @s add NoCT
#クリティカル確率デフォルト値加算
scoreboard players operation @s CRITRate_CB += $DefaultCriticalRate GlobalVer_CB
#武器のNBTからCoolTimeデータを抽出 = この数値分クールタイムが発生する
execute store result score @s W.CoolTime_CB run data get entity @s SelectedItem.tag.CoolTime
#ダメージタイプ
scoreboard players set $DamageType_CB GlobalVer_CB 1
#ダメージ処理functionへ
function sf:combat/final_process/player_to_mob