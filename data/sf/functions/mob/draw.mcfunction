#乱数生成(1000)
    function sf:rng/generation
    scoreboard players operation @s Random_CB %= $1000 GlobalVer_CB
#Global 0.5% : 1% : 1.3%
    execute if score GlobalProgress GlobalVer_CB matches 0 if score @s Random_CB matches 0..4 run function sf:mob/entity_check
    execute if score GlobalProgress GlobalVer_CB matches 1 if score @s Random_CB matches 0..9 run function sf:mob/entity_check
    execute if score GlobalProgress GlobalVer_CB matches 2.. if score @s Random_CB matches 0..12 run function sf:mob/entity_check
#重複抽選防止
    tag @s add AlreadyDraw