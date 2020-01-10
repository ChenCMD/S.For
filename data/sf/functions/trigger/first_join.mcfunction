#ユーザーID付与
    scoreboard players add $Global UserID_CB 1
    scoreboard players operation @s UserID_CB = $Global UserID_CB
#体力設定
    scoreboard players operation @s Health_CB = $Global HealthMAX_CB
    scoreboard players operation @s HealthMAX_CB = $Global HealthMAX_CB
#registance付与
    effect give @s resistance 999999 4 true
#10-10-10-10-10が設置されてなかった場合設置する
    execute unless entity 10-10-10-10-10 at @s run summon armor_stand ~ 0 ~ {UUIDLeast:4503599627370512L,UUIDMost:68720525328L}