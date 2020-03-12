#乱数を持つlootをspawn
    loot spawn ~ ~ ~ loot sf:rng
#値写す
    execute store result score $Rand_Modifier Random_CB run data get entity @e[type=item,nbt={Item:{tag:{RAND:1b}}},distance=..1,limit=1] Item.tag.AttributeModifiers[0].Amount 100
#kill
    kill @e[type=item,nbt={Item:{tag:{RAND:1b}}},distance=..3,limit=1]
#reset
    scoreboard players reset $RandUseCount Random_CB