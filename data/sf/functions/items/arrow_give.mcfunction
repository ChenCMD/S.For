#inGround:1bの矢を撃ったプレイヤーに矢をgive
    execute as @a if score @s UserID_CB = @e[nbt={inGround:1b},type=arrow,limit=1] UserID_CB run give @s minecraft:arrow
#inGround:1bの矢をkill
    execute as @a if score @s UserID_CB = @e[nbt={inGround:1b},type=arrow,limit=1] UserID_CB run kill @e[nbt={inGround:1b},type=arrow,limit=1]