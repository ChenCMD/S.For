execute if entity @s[nbt={PortalCooldown:0}] align xz run tp @s ~0.5 ~ ~0.5
execute if entity @s[nbt={PortalCooldown:0}] run data merge entity @s {PortalCooldown:1801,Motion:[0.0d,0.0d,0.0d]}

particle minecraft:enchant ~ ~1.2 ~ 0 0 0 1.5 5 normal
execute if entity @s[nbt={PortalCooldown:1}] run playsound minecraft:block.anvil.use block @a
execute if entity @s[nbt={PortalCooldown:1}] run particle minecraft:end_rod ~ ~0.5 ~ 0.4 0.4 0.4 0 20 normal
execute if entity @s[nbt={PortalCooldown:1}] run loot spawn ~ ~ ~ loot sf:blocks/advanced_crafting_table
execute if entity @s[nbt={PortalCooldown:1}] run kill @s
#ゲーム進行度設定
execute if entity @s[nbt={PortalCooldown:1}] if score $GlobalProgress GlobalVer_CB matches 0 run scoreboard players set $GlobalProgress GlobalVer_CB 1