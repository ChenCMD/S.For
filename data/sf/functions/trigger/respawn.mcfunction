#体力セット
    scoreboard players operation @s Health_CB = @s HealthMAX_CB
#耐性付与
    effect give @s resistance 999999 4 true
#PerHealth更新処理
    function sf:combat/common/health_per