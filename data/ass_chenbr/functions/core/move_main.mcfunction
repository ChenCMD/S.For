#一応の処理
    execute unless score $ASS_X ASS_ChenBR = $ASS_X ASS_ChenBR run scoreboard players set $ASS_X ASS_ChenBR 0
    execute unless score $ASS_Y ASS_ChenBR = $ASS_Y ASS_ChenBR run scoreboard players set $ASS_Y ASS_ChenBR 0
    execute unless score $ASS_Z ASS_ChenBR = $ASS_Z ASS_ChenBR run scoreboard players set $ASS_Z ASS_ChenBR 0
#参照座標までの配列のremove
    execute if score $ASS_X ASS_ChenBR matches 1.. run function ass_chenbr:core/move_x
    execute if score $ASS_Y ASS_ChenBR matches 1.. run function ass_chenbr:core/move_y
    execute if score $ASS_Z ASS_ChenBR matches 1.. run function ass_chenbr:core/move_z