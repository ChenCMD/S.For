summon minecraft:villager ~ ~ ~ {Tags:["LootDeath"],DeathLootTable:"sf:rng",Silent:1b}
kill @e[tag=LootDeath]
execute store result score $Rand_Modifier Random_CB run data get entity @e[nbt={Item:{tag:{RAND:1b}}},distance=..3,limit=1] Item.tag.AttributeModifiers[0].Amount 100
kill @e[nbt={Item:{tag:{RAND:1b}}},distance=..3,limit=1]
scoreboard players reset RandUseCount Random_CB