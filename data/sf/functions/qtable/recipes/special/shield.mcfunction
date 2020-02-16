execute if entity @s[tag=QT_white_banner] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:shield,Count:1b,tag:{BlockEntityTag:{Base:0}}},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_orange_banner] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:shield,Count:1b,tag:{BlockEntityTag:{Base:1}}},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_magenta_banner] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:shield,Count:1b,tag:{BlockEntityTag:{Base:2}}},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_light_blue_banner] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:shield,Count:1b,tag:{BlockEntityTag:{Base:3}}},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_yellow_banner] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:shield,Count:1b,tag:{BlockEntityTag:{Base:4}}},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_lime_banner] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:shield,Count:1b,tag:{BlockEntityTag:{Base:5}}},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_pink_banner] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:shield,Count:1b,tag:{BlockEntityTag:{Base:6}}},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_gray_banner] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:shield,Count:1b,tag:{BlockEntityTag:{Base:7}}},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_light_gray_banner] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:shield,Count:1b,tag:{BlockEntityTag:{Base:8}}},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_cyan_banner] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:shield,Count:1b,tag:{BlockEntityTag:{Base:9}}},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_purple_banner] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:shield,Count:1b,tag:{BlockEntityTag:{Base:10}}},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_blue_banner] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:shield,Count:1b,tag:{BlockEntityTag:{Base:11}}},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_brown_banner] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:shield,Count:1b,tag:{BlockEntityTag:{Base:12}}},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_green_banner] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:shield,Count:1b,tag:{BlockEntityTag:{Base:13}}},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_red_banner] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:shield,Count:1b,tag:{BlockEntityTag:{Base:14}}},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if entity @s[tag=QT_black_banner] align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:shield,Count:1b,tag:{BlockEntityTag:{Base:15}}},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}

execute align xz positioned ~0.5 ~0.3 ~0.5 run tp @e[tag=QT_Crafted,distance=..0.001,limit=1] @s
data modify entity @e[tag=QT_Crafted,distance=..0.001,limit=1] CustomName set from entity @s CustomName
execute at @s as @e[tag=QT_Crafted,distance=..0.001,limit=1] run function #sf:qtable/positions

execute as @e[tag=QT_Crafted,distance=..0.001,limit=1] align xz positioned ~0.5 ~ ~0.5 run tp @s @e[tag=QT_shield,distance=..0.625,limit=1]
execute align xz positioned ~0.5 ~ ~0.5 as @e[tag=QT_shield,distance=..0.625,limit=1] at @s run data modify entity @e[tag=QT_Crafted,distance=..0.001,limit=1] CustomName set from entity @s CustomName
execute align xz positioned ~0.5 ~ ~0.5 as @e[tag=QT_Crafted,distance=..0.625,limit=1] at @s run function #sf:qtable/positions
execute align xz positioned ~0.5 ~ ~0.5 as @e[tag=QT_Crafted,distance=..0.625,limit=1] align xz positioned ~0.5 ~0.3 ~0.5 run tp @s ~ ~ ~
