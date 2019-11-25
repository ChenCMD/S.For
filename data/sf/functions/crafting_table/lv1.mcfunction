execute if entity @s[nbt={PortalCooldown:0}] align xz run tp @s ~0.5 ~ ~0.5
execute if entity @s[nbt={PortalCooldown:0}] run data merge entity @s {PortalCooldown:1801,Motion:[0.0d,0.0d,0.0d]}

particle minecraft:enchant ~ ~1.2 ~ 0 0 0 1.5 5 normal
execute if entity @s[nbt={PortalCooldown:1}] run playsound minecraft:block.anvil.use block @a
execute if entity @s[nbt={PortalCooldown:1}] run particle minecraft:end_rod ~ ~0.5 ~ 0.4 0.4 0.4 0 20 normal
execute if entity @s[nbt={PortalCooldown:1}] align xyz run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Tags:["Crafter"],NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b}
execute if entity @s[nbt={PortalCooldown:1}] align xyz positioned ~0.5 ~ ~0.5 run function sf:crafting_table/ornament/summon
execute if entity @s[nbt={PortalCooldown:1}] run kill @s
#ゲーム進行度設定
execute if entity @s[nbt={PortalCooldown:1}] if score GlobalProgress GlobalVer_CB matches 0 run scoreboard players set GlobalProgress GlobalVer_CB 1