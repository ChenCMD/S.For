execute align xz run summon minecraft:item ~0.5 ~0.3 ~0.5 {Item:{id:brown_banner,Count:2b},Tags:[QT_Crafted],NoGravity:true,PickupDelay:32767s,Health:32767s,Age:-32768s}
execute align xz positioned ~0.5 ~0.3 ~0.5 run tp @e[tag=QT_Crafted,distance=..0.001,limit=1] @s
data modify entity @e[tag=QT_Crafted,distance=..0.001,limit=1] CustomName set from entity @s CustomName
execute as @e[tag=QT_Crafted,distance=..0.001,limit=1] run function #sf:qtable/positions
execute as @e[tag=QT_Crafted,distance=..0.001,limit=1] align xz positioned ~0.5 ~0.3 ~0.5 run tp @s ~ ~ ~