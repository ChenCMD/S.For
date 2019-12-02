#経験値減少 + 引継ぎ
scoreboard players operation $XP GlobalVer_CB -= $ReqXP GlobalVer_CB
#精神力上昇

#必要経験値増加
scoreboard players operation $ReqXP GlobalVer_CB *= $ReqXPIncrease GlobalVer_CB
scoreboard players operation $ReqXP GlobalVer_CB /= $100 GlobalVer_CB
#レベル+1
scoreboard players add $Level GlobalVer_CB 1
#体力+5
scoreboard players operation $Global GlobalVer_CB += $AddHealth GlobalVer_CB
scoreboard players operation @a[tag=!Death] HealthMAX_CB_CB += $AddHealth GlobalVer_CB
scoreboard players operation @a[tag=!Death] Health_CB += $AddHealth GlobalVer_CB
#レベルアップログ
tellraw @a [{"text":"LevelUP!!","color":"green","bold":true},{"text":"\n現在","color":"aqua","bold":false},{"text":": ","color":"white","bold":false},{"score":{"name":"$Level","objective":"GlobalVer_CB"},"color":"yellow","bold":true},{"text":"Lv","bold":false}]
execute as @a at WorldDrive run playsound minecraft:entity.player.levelup master WorldDrive ~ ~ ~ 1 1.15
#一度に2lv以上上がるときのループ処理
execute if score $XP GlobalVer_CB >= $ReqXP GlobalVer_CB run function sf:combat/final_process/levelup