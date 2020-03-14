#計算回数のインクリメント
    scoreboard players add $ST:GenerateCount Random_CB 1
#ノードに配置するステータスの乱数
    scoreboard players operation $ST:Rand_X Random_CB *= $Rand_A Random_CB
    scoreboard players operation $ST:Rand_X Random_CB %= $Rand_M Random_CB
    scoreboard players operation $ST:RandOut Random_CB = $ST:Rand_X Random_CB
    scoreboard players operation $ST:RandOut Random_CB %= $100 Const_CB
#実行処理
    execute if score $ST:GenerateCount Random_CB matches 01..06 if score $ST:RandOut Random_CB matches 00..19 run scoreboard players set $Global GlobalVer_CB 1
    execute if score $ST:GenerateCount Random_CB matches 01..06 if score $ST:RandOut Random_CB matches 20..69 run scoreboard players set $Global GlobalVer_CB 2
    execute if score $ST:GenerateCount Random_CB matches 01..06 if score $ST:RandOut Random_CB matches 70..84 run scoreboard players set $Global GlobalVer_CB 3
    execute if score $ST:GenerateCount Random_CB matches 01..06 if score $ST:RandOut Random_CB matches 85..99 run scoreboard players set $Global GlobalVer_CB 4

    execute if score $ST:GenerateCount Random_CB matches 07..18 if score $ST:RandOut Random_CB matches 00..19 run scoreboard players set $Global GlobalVer_CB 5
    execute if score $ST:GenerateCount Random_CB matches 07..18 if score $ST:RandOut Random_CB matches 20..49 run scoreboard players set $Global GlobalVer_CB 6
    execute if score $ST:GenerateCount Random_CB matches 07..18 if score $ST:RandOut Random_CB matches 50..74 run scoreboard players set $Global GlobalVer_CB 7
    execute if score $ST:GenerateCount Random_CB matches 07..18 if score $ST:RandOut Random_CB matches 75..99 run scoreboard players set $Global GlobalVer_CB 8

    execute if score $ST:GenerateCount Random_CB matches 19..36 if score $ST:RandOut Random_CB matches 00..14 run scoreboard players set $Global GlobalVer_CB 9
    execute if score $ST:GenerateCount Random_CB matches 19..36 if score $ST:RandOut Random_CB matches 15..44 run scoreboard players set $Global GlobalVer_CB 10
    execute if score $ST:GenerateCount Random_CB matches 19..36 if score $ST:RandOut Random_CB matches 45..69 run scoreboard players set $Global GlobalVer_CB 11
    execute if score $ST:GenerateCount Random_CB matches 19..36 if score $ST:RandOut Random_CB matches 70..99 run scoreboard players set $Global GlobalVer_CB 12

    execute if score $ST:GenerateCount Random_CB matches 37..60 if score $ST:RandOut Random_CB matches 00..14 run scoreboard players set $Global GlobalVer_CB 13
    execute if score $ST:GenerateCount Random_CB matches 37..60 if score $ST:RandOut Random_CB matches 15..44 run scoreboard players set $Global GlobalVer_CB 14
    execute if score $ST:GenerateCount Random_CB matches 37..60 if score $ST:RandOut Random_CB matches 45..69 run scoreboard players set $Global GlobalVer_CB 15
    execute if score $ST:GenerateCount Random_CB matches 37..60 if score $ST:RandOut Random_CB matches 70..99 run scoreboard players set $Global GlobalVer_CB 16


#実際に配置するステータス増加量の計算
    scoreboard players operation $ST:Rand_X Random_CB *= $Rand_A Random_CB
    scoreboard players operation $ST:Rand_X Random_CB %= $Rand_M Random_CB
    scoreboard players operation $ST:RandOut Random_CB = $ST:Rand_X Random_CB

    execute if score $Global GlobalVer_CB matches 01 run data modify storage chenbr:sf data.skillTree[0] append value 1B
    execute if score $Global GlobalVer_CB matches 01 run scoreboard players operation $ST:RandOut Random_CB %= $4 Const_CB
    execute if score $Global GlobalVer_CB matches 01 run scoreboard players add $ST:RandOut Random_CB 1
    execute if score $Global GlobalVer_CB matches 02 run data modify storage chenbr:sf data.skillTree[0] append value 2B
    execute if score $Global GlobalVer_CB matches 02 run scoreboard players operation $ST:RandOut Random_CB %= $5 Const_CB
    execute if score $Global GlobalVer_CB matches 02 run scoreboard players add $ST:RandOut Random_CB 1
    execute if score $Global GlobalVer_CB matches 03 run data modify storage chenbr:sf data.skillTree[0] append value 3B
    execute if score $Global GlobalVer_CB matches 03 run scoreboard players operation $ST:RandOut Random_CB %= $3 Const_CB
    execute if score $Global GlobalVer_CB matches 03 run scoreboard players add $ST:RandOut Random_CB 1
    execute if score $Global GlobalVer_CB matches 04 run data modify storage chenbr:sf data.skillTree[0] append value 4B
    execute if score $Global GlobalVer_CB matches 04 run scoreboard players operation $ST:RandOut Random_CB %= $5 Const_CB
    execute if score $Global GlobalVer_CB matches 04 run scoreboard players add $ST:RandOut Random_CB 2

    execute if score $Global GlobalVer_CB matches 05 run data modify storage chenbr:sf data.skillTree[1] append value 1B
    execute if score $Global GlobalVer_CB matches 05 run scoreboard players operation $ST:RandOut Random_CB %= $5 Const_CB
    execute if score $Global GlobalVer_CB matches 05 run scoreboard players add $ST:RandOut Random_CB 1
    execute if score $Global GlobalVer_CB matches 06 run data modify storage chenbr:sf data.skillTree[1] append value 2B
    execute if score $Global GlobalVer_CB matches 06 run scoreboard players operation $ST:RandOut Random_CB %= $6 Const_CB
    execute if score $Global GlobalVer_CB matches 06 run scoreboard players add $ST:RandOut Random_CB 5
    execute if score $Global GlobalVer_CB matches 07 run data modify storage chenbr:sf data.skillTree[1] append value 3B
    execute if score $Global GlobalVer_CB matches 07 run scoreboard players operation $ST:RandOut Random_CB %= $3 Const_CB
    execute if score $Global GlobalVer_CB matches 07 run scoreboard players add $ST:RandOut Random_CB 2
    execute if score $Global GlobalVer_CB matches 08 run data modify storage chenbr:sf data.skillTree[1] append value 4B
    execute if score $Global GlobalVer_CB matches 08 run scoreboard players operation $ST:RandOut Random_CB %= $9 Const_CB
    execute if score $Global GlobalVer_CB matches 08 run scoreboard players add $ST:RandOut Random_CB 2

    execute if score $Global GlobalVer_CB matches 09 run data modify storage chenbr:sf data.skillTree[2] append value 1B
    execute if score $Global GlobalVer_CB matches 09 run scoreboard players operation $ST:RandOut Random_CB %= $5 Const_CB
    execute if score $Global GlobalVer_CB matches 09 run scoreboard players add $ST:RandOut Random_CB 2
    execute if score $Global GlobalVer_CB matches 10 run data modify storage chenbr:sf data.skillTree[2] append value 2B
    execute if score $Global GlobalVer_CB matches 10 run scoreboard players operation $ST:RandOut Random_CB %= $6 Const_CB
    execute if score $Global GlobalVer_CB matches 10 run scoreboard players add $ST:RandOut Random_CB 10
    execute if score $Global GlobalVer_CB matches 11 run data modify storage chenbr:sf data.skillTree[2] append value 3B
    execute if score $Global GlobalVer_CB matches 11 run scoreboard players operation $ST:RandOut Random_CB %= $3 Const_CB
    execute if score $Global GlobalVer_CB matches 11 run scoreboard players add $ST:RandOut Random_CB 3
    execute if score $Global GlobalVer_CB matches 12 run data modify storage chenbr:sf data.skillTree[2] append value 4B
    execute if score $Global GlobalVer_CB matches 12 run scoreboard players operation $ST:RandOut Random_CB %= $13 Const_CB
    execute if score $Global GlobalVer_CB matches 12 run scoreboard players add $ST:RandOut Random_CB 2

    execute if score $Global GlobalVer_CB matches 13 run data modify storage chenbr:sf data.skillTree[3] append value 1B
    execute if score $Global GlobalVer_CB matches 13 run scoreboard players operation $ST:RandOut Random_CB %= $6 Const_CB
    execute if score $Global GlobalVer_CB matches 13 run scoreboard players add $ST:RandOut Random_CB 2
    execute if score $Global GlobalVer_CB matches 14 run data modify storage chenbr:sf data.skillTree[3] append value 2B
    execute if score $Global GlobalVer_CB matches 14 run scoreboard players operation $ST:RandOut Random_CB %= $10 Const_CB
    execute if score $Global GlobalVer_CB matches 14 run scoreboard players add $ST:RandOut Random_CB 15
    execute if score $Global GlobalVer_CB matches 15 run data modify storage chenbr:sf data.skillTree[3] append value 3B
    execute if score $Global GlobalVer_CB matches 15 run scoreboard players operation $ST:RandOut Random_CB %= $3 Const_CB
    execute if score $Global GlobalVer_CB matches 15 run scoreboard players add $ST:RandOut Random_CB 5
    execute if score $Global GlobalVer_CB matches 16 run data modify storage chenbr:sf data.skillTree[3] append value 4B
    execute if score $Global GlobalVer_CB matches 16 run scoreboard players operation $ST:RandOut Random_CB %= $18 Const_CB
    execute if score $Global GlobalVer_CB matches 16 run scoreboard players add $ST:RandOut Random_CB 2

scoreboard players reset $Global GlobalVer_CB

    execute if score $ST:GenerateCount Random_CB matches 01..06 run data modify storage chenbr:sf data.skillTree[0] append value -1B
    execute if score $ST:GenerateCount Random_CB matches 07..18 run data modify storage chenbr:sf data.skillTree[1] append value -1B
    execute if score $ST:GenerateCount Random_CB matches 19..36 run data modify storage chenbr:sf data.skillTree[2] append value -1B
    execute if score $ST:GenerateCount Random_CB matches 37..60 run data modify storage chenbr:sf data.skillTree[3] append value -1B
    execute if score $ST:GenerateCount Random_CB matches 01..06 store result storage chenbr:sf data.skillTree[0][-1] byte 1 run scoreboard players get $ST:RandOut Random_CB
    execute if score $ST:GenerateCount Random_CB matches 07..18 store result storage chenbr:sf data.skillTree[1][-1] byte 1 run scoreboard players get $ST:RandOut Random_CB
    execute if score $ST:GenerateCount Random_CB matches 19..36 store result storage chenbr:sf data.skillTree[2][-1] byte 1 run scoreboard players get $ST:RandOut Random_CB
    execute if score $ST:GenerateCount Random_CB matches 37..60 store result storage chenbr:sf data.skillTree[3][-1] byte 1 run scoreboard players get $ST:RandOut Random_CB

execute if score $ST:GenerateCount Random_CB matches 60 run function sf:skilltree/generate/end
execute if score $ST:GenerateCount Random_CB matches ..59 run function sf:skilltree/generate/loop