execute if entity @s[tag=QT_white_dye] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:white_shulker_box,Count:1b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_orange_dye] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:orange_shulker_box,Count:1b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_magenta_dye] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:magenta_shulker_box,Count:1b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_light_blue_dye] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:light_blue_shulker_box,Count:1b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_yellow_dye] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:yellow_shulker_box,Count:1b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_lime_dye] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:lime_shulker_box,Count:1b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_pink_dye] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:pink_shulker_box,Count:1b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_gray_dye] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:gray_shulker_box,Count:1b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_light_gray_dye] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:light_gray_shulker_box,Count:1b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_cyan_dyer] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:cyan_shulker_box,Count:1b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_purple_dye] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:purple_shulker_box,Count:1b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_blue_dye] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:blue_shulker_box,Count:1b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_brown_dye] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:brown_shulker_box,Count:1b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_green_dye] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:green_shulker_box,Count:1b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_red_dye] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:red_shulker_box,Count:1b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_black_dye] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:black_shulker_box,Count:1b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}

execute as @e[tag=QT_shulker_box,distance=..0.001,limit=1] align xz positioned ~0.5 ~0.3 ~0.5 run tp @e[tag=QT_Crafted,distance=..0.001,limit=1] @s

data modify entity @e[tag=QT_Crafted,distance=..0.001,limit=1] CustomName set from entity @e[tag=QT_shulker_box,distance=..0.001,limit=1] CustomName
execute as @e[tag=QT_Crafted,distance=..0.001,limit=1] run function #qrafting_table:positions
execute as @e[tag=QT_Crafted,distance=..0.001,limit=1] align xz positioned ~0.5 ~0.3 ~0.5 run tp @s ~ ~ ~