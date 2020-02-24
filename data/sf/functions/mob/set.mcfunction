#乱数生成(1000)
    function sf:system/rng/generation
    scoreboard players operation @s Random_CB %= $1000 Const_CB
#Global 0.3% : 0.5% : 1.0%
    execute if score $GlobalProgress GlobalVer_CB matches 0 if score @s Random_CB matches 0..2 run function sf:mob/entity_check
    execute if score $GlobalProgress GlobalVer_CB matches 1 if score @s Random_CB matches 0..4 run function sf:mob/entity_check
    execute if score $GlobalProgress GlobalVer_CB matches 2.. if score @s Random_CB matches 0..9 run function sf:mob/entity_check

#ステータスセット
    #ベースすてーたす HP
        scoreboard players operation @s MobHealth_CB = $MobBaseHealth GlobalVer_CB
    #乱数生成(0~14 + 93)
        function sf:system/rng/generation
        scoreboard players operation @s Random_CB %= $15 Const_CB
        scoreboard players add @s Random_CB 93
    #BaseHealth (93 ~ 107 %)
        scoreboard players operation @s MobHealth_CB *= $100 Const_CB
        scoreboard players operation @s MobHealth_CB /= @s Random_CB

    #ベースすてーたす ATK
        scoreboard players operation @s MobATK_CB = $MobBaseATK GlobalVer_CB
    #乱数生成(0~10 + 95)
        function sf:system/rng/generation
        scoreboard players operation @s Random_CB %= $11 Const_CB
        scoreboard players add @s Random_CB 95
    #BaseATK (95 ~ 105 %)
        scoreboard players operation @s MobATK_CB *= $100 Const_CB
        scoreboard players operation @s MobATK_CB /= @s Random_CB

    #ベースすてーたす XP
        scoreboard players operation @s MobXP_CB = $MobBaseXP GlobalVer_CB
    #乱数生成(0~51 + 75)
        function sf:system/rng/generation
        scoreboard players operation @s Random_CB %= $51 Const_CB
        scoreboard players add @s Random_CB 75
    #BaseXP (75 ~ 125 %)
        scoreboard players operation @s MobXP_CB *= $100 Const_CB
        scoreboard players operation @s MobXP_CB /= @s Random_CB

    #難易度補正
        execute if entity @s[tag=!Elite] if score $Difficulty GlobalVer_CB matches 3 run scoreboard players operation @s MobHealth_CB *= $3 Const_CB
        execute if entity @s[tag=!Elite] if score $Difficulty GlobalVer_CB matches 3 run scoreboard players operation @s MobHealth_CB /= $2 Const_CB
        execute if entity @s[tag=!Elite] if score $Difficulty GlobalVer_CB matches 4 run scoreboard players operation @s MobHealth_CB *= $2 Const_CB

    #エリート補正
        execute if entity @s[tag=Elite] if score $Difficulty GlobalVer_CB matches 1 run scoreboard players operation @s MobHealth_CB *= $8 Const_CB
        execute if entity @s[tag=Elite] if score $Difficulty GlobalVer_CB matches 2 run scoreboard players operation @s MobHealth_CB *= $10 Const_CB
        execute if entity @s[tag=Elite] if score $Difficulty GlobalVer_CB matches 3 run scoreboard players operation @s MobHealth_CB *= $14 Const_CB
        execute if entity @s[tag=Elite] if score $Difficulty GlobalVer_CB matches 4 run scoreboard players operation @s MobHealth_CB *= $25 Const_CB

#重複抽選防止
    tag @s add AlreadySet