#経験値減少 + 引継ぎ
    scoreboard players operation $XP GlobalVer_CB -= $ReqXP GlobalVer_CB
    execute if score $XP GlobalVer_CB matches ..-1 run scoreboard players set $XP GlobalVer_CB 0
#レベル+1
    scoreboard players add $Level GlobalVer_CB 1
#必要経験値増加
    scoreboard players operation $ReqXP GlobalVer_CB += $Level GlobalVer_CB
    scoreboard players operation $ReqXP GlobalVer_CB += $Level GlobalVer_CB
    scoreboard players add $ReqXP GlobalVer_CB 30

#Player体力+N
    scoreboard players operation $Global GlobalVer_CB += $AddHealth GlobalVer_CB
    scoreboard players operation @a[tag=!Death] HealthMAX_CB += $AddHealth GlobalVer_CB
    scoreboard players operation @a[tag=!Death] Health_CB += $AddHealth GlobalVer_CB

#MOB体力補正
    scoreboard players operation $MobBaseHealth GlobalVer_CB *= $100 Const_CB
    scoreboard players operation $MobBaseHealth GlobalVer_CB /= $9 Const_CB
    scoreboard players operation $MobBaseHealth GlobalVer_CB += $Level GlobalVer_CB
    scoreboard players add $MobBaseHealth GlobalVer_CB 50
    scoreboard players operation $MobBaseHealth GlobalVer_CB *= $9 Const_CB
    scoreboard players operation $MobBaseHealth GlobalVer_CB /= $100 Const_CB
#MOB攻撃力補正
    scoreboard players add $MobBaseATK GlobalVer_CB 3
#MOB経験値DROP量補正
    scoreboard players add $MobBaseXP GlobalVer_CB 1

#レベルアップログ
    tellraw @a [{"text":"LevelUP!!","color":"green","bold":true},{"text":"\n現在","color":"aqua","bold":false},{"text":": ","color":"white","bold":false},{"score":{"name":"$Level","objective":"GlobalVer_CB"},"color":"yellow","bold":true},{"text":"Lv","bold":false}]
    execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.15
#一度に2lv以上上がるときのループ処理
    execute if score $XP GlobalVer_CB >= $ReqXP GlobalVer_CB run function sf:combat/common/levelup