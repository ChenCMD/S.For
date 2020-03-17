execute if data entity @s {ArmorItems:[{tag:{air:7b,map:1b}}]} align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:filled_map,Count:2b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if data entity @s {ArmorItems:[{tag:{air:6b,map:2b}}]} align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:filled_map,Count:3b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if data entity @s {ArmorItems:[{tag:{air:5b,map:3b}}]} align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:filled_map,Count:4b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if data entity @s {ArmorItems:[{tag:{air:4b,map:4b}}]} align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:filled_map,Count:5b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if data entity @s {ArmorItems:[{tag:{air:3b,map:5b}}]} align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:filled_map,Count:6b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if data entity @s {ArmorItems:[{tag:{air:2b,map:6b}}]} align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:filled_map,Count:7b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if data entity @s {ArmorItems:[{tag:{air:1b,map:7b}}]} align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:filled_map,Count:8b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute if data entity @s {ArmorItems:[{tag:{air:0b,map:8b}}]} align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:filled_map,Count:9b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}

execute as @e[tag=QT_filled_map,distance=..0.001,limit=1] align xz positioned ~0.5 ~0.3 ~0.5 run tp @e[tag=QT_Crafted,distance=..0.001,limit=1] @s

execute as @e[tag=QT_filled_map,distance=..0.001,limit=1] run data modify entity @e[tag=QT_Crafted,distance=..0.001,limit=1] CustomName set from entity @s CustomName
execute as @e[tag=QT_Crafted,distance=..0.001,limit=1] run function #qrafting_table:positions
execute as @e[tag=QT_Crafted,distance=..0.001,limit=1] align xz positioned ~0.5 ~0.3 ~0.5 run tp @s ~ ~ ~