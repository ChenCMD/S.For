#onJoin - First
    #UserID++
        scoreboard players add $Global UserID_CB 1
    #プレイヤーに各種数値設定
        scoreboard players operation @s UserID_CB = $Global UserID_CB
        scoreboard players operation @s Health_CB = $Global HealthMAX_CB
        scoreboard players operation @s HealthMAX_CB = $Global HealthMAX_CB
    #耐性付与
        effect give @s resistance 999999 4 true