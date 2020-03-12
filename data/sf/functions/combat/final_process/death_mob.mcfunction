#経験値増加
    scoreboard players operation $XP GlobalVer_CB += @s MobXP_CB
#Trigger発火
    execute as @a[tag=Attacker] at @s run function sf:trigger/mobkill
#tellraw
    tellraw @a[tag=Attacker] [{"text":"* ","color":"white"},{"text":"+","color":"green"},{"score":{"name":"@s","objective":"MobXP_CB"},"color":"green"},{"text":"XP","color":"green"},{"text":" <","color":"white"},{"score":{"name":"$XP","objective":"GlobalVer_CB"},"color":"aqua"},{"text":"/","color":"white"},{"score":{"name":"$ReqXP","objective":"GlobalVer_CB"},"color":"aqua"},{"text":">","color":"white"}]
#必要経験値より多い場合レベルアップ処理
    execute if score $XP GlobalVer_CB >= $ReqXP GlobalVer_CB run function sf:combat/common/levelup
#さよなら～
    kill @s