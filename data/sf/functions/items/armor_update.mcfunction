#防御値の加算
    execute store result score $RegisterDEF DEF_CB run data get entity @s Inventory[{Slot:103b}].tag.DEF
    scoreboard players operation @s DEF_CB = $RegisterDEF DEF_CB
    execute store result score $RegisterDEF DEF_CB run data get entity @s Inventory[{Slot:102b}].tag.DEF
    scoreboard players operation @s DEF_CB += $RegisterDEF DEF_CB
    execute store result score $RegisterDEF DEF_CB run data get entity @s Inventory[{Slot:101b}].tag.DEF
    scoreboard players operation @s DEF_CB += $RegisterDEF DEF_CB
    execute store result score $RegisterDEF DEF_CB run data get entity @s Inventory[{Slot:100b}].tag.DEF
    scoreboard players operation @s DEF_CB += $RegisterDEF DEF_CB
#reset
    scoreboard players reset $RegisterDEF DEF_CB