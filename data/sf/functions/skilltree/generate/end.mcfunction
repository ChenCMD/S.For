#assに移す
    data modify storage chenbr:ass_data Array set from storage chenbr:sf data.skillTree
    data merge storage chenbr:ass_data {Input:[{X:1,Y:0,ReplaceValue:-1},{X:1,Y:0,ReplaceValue:1},{X:1,Y:0,ReplaceValue:-1},{X:1,Y:0,ReplaceValue:2},{X:2,Y:0,ReplaceValue:-1},{X:2,Y:0,ReplaceValue:3},{X:2,Y:0,ReplaceValue:-1},{X:2,Y:0,ReplaceValue:4},{X:2,Y:0,ReplaceValue:-1},{X:2,Y:0,ReplaceValue:5},{X:3,Y:0,ReplaceValue:-1},{X:3,Y:0,ReplaceValue:6},{X:3,Y:0,ReplaceValue:-1},{X:3,Y:0,ReplaceValue:7},{X:3,Y:0,ReplaceValue:-1},{X:3,Y:0,ReplaceValue:8},{X:3,Y:0,ReplaceValue:-1},{X:3,Y:0,ReplaceValue:9}]}
#
    scoreboard players operation $ST:Rand_X Random_CB *= $Rand_A Random_CB
    scoreboard players operation $ST:Rand_X Random_CB %= $Rand_M Random_CB
    scoreboard players operation $ST:RandOut Random_CB = $ST:Rand_X Random_CB
    scoreboard players operation $ST:RandOut Random_CB %= $6 Const_CB

    execute store result storage chenbr:ass_data Input[0].Y int 1 run scoreboard players get $ST:RandOut Random_CB
    scoreboard players add $ST:RandOut Random_CB 1
    execute store result storage chenbr:ass_data Input[1].Y int 1 run scoreboard players get $ST:RandOut Random_CB
    scoreboard players add $ST:RandOut Random_CB 5
    execute store result storage chenbr:ass_data Input[2].Y int 1 run scoreboard players get $ST:RandOut Random_CB
    scoreboard players add $ST:RandOut Random_CB 1
    execute store result storage chenbr:ass_data Input[3].Y int 1 run scoreboard players get $ST:RandOut Random_CB


    scoreboard players operation $ST:Rand_X Random_CB *= $Rand_A Random_CB
    scoreboard players operation $ST:Rand_X Random_CB %= $Rand_M Random_CB
    scoreboard players operation $ST:RandOut Random_CB = $ST:Rand_X Random_CB
    scoreboard players operation $ST:RandOut Random_CB %= $6 Const_CB

    execute store result storage chenbr:ass_data Input[4].Y int 1 run scoreboard players get $ST:RandOut Random_CB
    scoreboard players add $ST:RandOut Random_CB 1
    execute store result storage chenbr:ass_data Input[5].Y int 1 run scoreboard players get $ST:RandOut Random_CB
    scoreboard players add $ST:RandOut Random_CB 5
    execute store result storage chenbr:ass_data Input[6].Y int 1 run scoreboard players get $ST:RandOut Random_CB
    scoreboard players add $ST:RandOut Random_CB 1
    execute store result storage chenbr:ass_data Input[7].Y int 1 run scoreboard players get $ST:RandOut Random_CB
    scoreboard players add $ST:RandOut Random_CB 5
    execute store result storage chenbr:ass_data Input[8].Y int 1 run scoreboard players get $ST:RandOut Random_CB
    scoreboard players add $ST:RandOut Random_CB 1
    execute store result storage chenbr:ass_data Input[9].Y int 1 run scoreboard players get $ST:RandOut Random_CB

    scoreboard players operation $ST:Rand_X Random_CB *= $Rand_A Random_CB
    scoreboard players operation $ST:Rand_X Random_CB %= $Rand_M Random_CB
    scoreboard players operation $ST:RandOut Random_CB = $ST:Rand_X Random_CB
    scoreboard players operation $ST:RandOut Random_CB %= $6 Const_CB

    execute store result storage chenbr:ass_data Input[10].Y int 1 run scoreboard players get $ST:RandOut Random_CB
    scoreboard players add $ST:RandOut Random_CB 1
    execute store result storage chenbr:ass_data Input[11].Y int 1 run scoreboard players get $ST:RandOut Random_CB
    scoreboard players add $ST:RandOut Random_CB 5
    execute store result storage chenbr:ass_data Input[12].Y int 1 run scoreboard players get $ST:RandOut Random_CB
    scoreboard players add $ST:RandOut Random_CB 1
    execute store result storage chenbr:ass_data Input[13].Y int 1 run scoreboard players get $ST:RandOut Random_CB
    scoreboard players add $ST:RandOut Random_CB 5
    execute store result storage chenbr:ass_data Input[14].Y int 1 run scoreboard players get $ST:RandOut Random_CB
    scoreboard players add $ST:RandOut Random_CB 1
    execute store result storage chenbr:ass_data Input[15].Y int 1 run scoreboard players get $ST:RandOut Random_CB
    scoreboard players add $ST:RandOut Random_CB 5
    execute store result storage chenbr:ass_data Input[16].Y int 1 run scoreboard players get $ST:RandOut Random_CB
    scoreboard players add $ST:RandOut Random_CB 1
    execute store result storage chenbr:ass_data Input[17].Y int 1 run scoreboard players get $ST:RandOut Random_CB

    function ass_chenbr:api/auto_replace
    data modify storage chenbr:sf data.skillTree set from storage chenbr:ass_data Array
    data remove storage chenbr:ass_data Array

scoreboard players reset $ST:GenerateCount Random_CB
scoreboard players reset $ST:Rand_X Random_CB
scoreboard players reset $ST:RandOut Random_CB