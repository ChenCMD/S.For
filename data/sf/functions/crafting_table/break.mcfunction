loot spawn ~ ~0.2 ~ loot minecraft:blocks/crafting_table
playsound minecraft:block.glass.break block @a
execute positioned ~ ~0.41 ~ run kill @e[distance=..0.2,tag=Ornament,type=minecraft:armor_stand]
kill @s