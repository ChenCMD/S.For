#経験値減少 + 引継ぎ
    scoreboard players operation $XP GlobalVer_CB -= $ReqXP GlobalVer_CB
#レベル+1
    scoreboard players add $Level GlobalVer_CB 1
#必要経験値増加
    data modify storage sf:data Calc.Base set from storage sf:data Calc.Player.AddReqXP
    scoreboard players operation $A GlobalVer_CB = $ReqXP GlobalVer_CB
    scoreboard players operation $B GlobalVer_CB = $ReqXPIncrease GlobalVer_CB
    execute as 10-10-10-10-10 run function sf:system/calc/main
    scoreboard players operation $ReqXP GlobalVer_CB = 10-10-10-10-10 Calc_CB

#体力増加
    execute as 10-10-10-10-10 run function sf:combat/common/health_up
    execute as @a[tag=!Death] run function sf:combat/common/health_up
#敵体力増加
    data modify storage sf:data Calc.Base set from storage sf:data Calc.Mob.AddHealth
    scoreboard players operation $A Calc_CB = $AddMobHealth GlobalVer_CB
    scoreboard players operation $B Calc_CB = $Level GlobalVer_CB
    execute as 10-10-10-10-10 run function sf:system/calc/main
    scoreboard players operation $AddMobHealth GlobalVer_CB = 10-10-10-10-10 Calc_CB
#レベルアップログ
    tellraw @a [{"text":"LevelUP!!","color":"green","bold":true},{"text":"\n現在","color":"aqua","bold":false},{"text":": ","color":"white","bold":false},{"score":{"name":"$Level","objective":"GlobalVer_CB"},"color":"yellow","bold":true},{"text":"Lv","bold":false}]
    execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.15
#一度に2lv以上上がるときのループ処理
    execute if score $XP GlobalVer_CB >= $ReqXP GlobalVer_CB run function sf:combat/common/levelup