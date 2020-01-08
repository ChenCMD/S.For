#RawDamage
    #tellraw @s [{"text":"RawDamage","color":"yellow"},{"text":": ","color":"white"},{"score":{"objective":"onDamage_CB","name":"@s"}}]

#難易度補正
    execute if score $Difficulty GlobalVer_CB matches 1 run scoreboard players operation @s onDamage_CB /= $2 AddTmp
    execute if score $Difficulty GlobalVer_CB matches 3..4 run scoreboard players operation @s onDamage_CB /= $2 AddTmp
    execute if score $Difficulty GlobalVer_CB matches 3..4 run scoreboard players operation @s onDamage_CB *= $3 AddTmp

#受けたダメージ-防御力=最終的なダメージ
    scoreboard players operation @s onDamage_CB -= @s DEF_CB
#ダメージが0以下の場合0に
    scoreboard players set @s[scores={onDamage_CB=..0}] onDamage_CB 0
#体力-最終的なダメージ
    scoreboard players operation @s Health_CB -= @s onDamage_CB
#被ダメージのログ
    tellraw @s ["",{"text":"* "},{"score":{"name":"@s","objective":"onDamage_CB"},"color":"red"},{"translate":"ダメージを受けた","color":"red"}]
#HP -の時に0に
    scoreboard players set @s[scores={Health_CB=..-1}] Health_CB 0
#HPが0の場合死亡処理を突っ込む
    execute if entity @s[scores={Health_CB=0}] run function sf:combat/final_process/died
#PerHealth更新処理
    function sf:combat/common/health_per