#スコアに代入
    execute store result score $ASS_X ASS_ChenBR run data get storage chenbr:ass_data Input[0].X
    execute store result score $ASS_Y ASS_ChenBR run data get storage chenbr:ass_data Input[0].Y
    execute store result score $ASS_Z ASS_ChenBR run data get storage chenbr:ass_data Input[0].Z
#置換処理
    function ass_chenbr:core/move_main
    execute store success score $ASS_ListNest ASS_ChenBR if data storage chenbr:ass_data Array[0][0][0]
    execute if score $ASS_ListNest ASS_ChenBR matches 1 store result score $ASS_Output ASS_ChenBR run data get storage chenbr:ass_data Array[0][0][0]
    execute if score $ASS_ListNest ASS_ChenBR matches 1 run scoreboard players set $ASS_ListNest ASS_ChenBR -1
    execute unless score $ASS_ListNest ASS_ChenBR matches -1 store success score $ASS_ListNest ASS_ChenBR if data storage chenbr:ass_data Array[0][0]
    execute if score $ASS_ListNest ASS_ChenBR matches 1 store result score $ASS_Output ASS_ChenBR run data get storage chenbr:ass_data Array[0][0]
    execute if score $ASS_ListNest ASS_ChenBR matches 1 run scoreboard players set $ASS_ListNest ASS_ChenBR -1
    execute unless score $ASS_ListNest ASS_ChenBR matches -1 store success score $ASS_ListNest ASS_ChenBR if data storage chenbr:ass_data Array[0]
    execute if score $ASS_ListNest ASS_ChenBR matches 1 store result score $ASS_Output ASS_ChenBR run data get storage chenbr:ass_data Array[0]
    scoreboard players reset $ASS_ListNest ASS_ChenBR
    function ass_chenbr:core/revert_main
#消去
    data remove storage chenbr:ass_data Input[0]
#まだstorageに残ってたら再帰
    execute if data storage chenbr:ass_data Input[0] run function ass_chenbr:core/replace