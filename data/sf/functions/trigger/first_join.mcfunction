#onJoin - First
    #UserID++
        scoreboard players add $Global UserID_CB 1
    #プレイヤーに各種数値設定
        scoreboard players operation @s UserID_CB = $Global UserID_CB
        scoreboard players operation @s Health_CB = $Global HealthMAX_CB
        scoreboard players operation @s HealthMAX_CB = $Global HealthMAX_CB
    #耐性付与
        effect give @s resistance 999999 4 true
    execute unless entity 10-10-10-10-10 run summon armor_stand ~ 0 ~ {UUIDMost:68720525328L,UUIDLeast:4503599627370512L,Marker:1b,Small:1b,Invisible:1b}