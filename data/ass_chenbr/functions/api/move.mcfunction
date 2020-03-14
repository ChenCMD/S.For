#スコアに代入
    execute store result score $ASS_X ASS_ChenBR run data get storage chenbr:ass_data Input[0]
    execute store result score $ASS_Y ASS_ChenBR run data get storage chenbr:ass_data Input[1]
    execute store result score $ASS_Z ASS_ChenBR run data get storage chenbr:ass_data Input[2]
#参照座標までの配列のremove
    function ass_chenbr:core/move_main
#Inputの値の消去
    data remove storage chenbr:ass_data Input[0]
    data remove storage chenbr:ass_data Input[0]
    data remove storage chenbr:ass_data Input[0]