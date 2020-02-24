scoreboard players operation $RegisterDamage ATK_CB = @s ATK_CB
loot spawn ~ ~200 ~ loot sf:message/damage/normal
scoreboard players reset $RegisterDamage
summon armor_stand ~ ~ ~ {PortalCooldown:16,Tags:["DamageLogs","NativeLoad","NotInsert"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"\"\"",CustomNameVisible:1b}
execute as @e[distance=..0.0001,limit=1,tag=DamageLogs,tag=NotInsert] positioned ~ ~200 ~ run data modify entity @s CustomName set from entity @e[type=item,nbt={Item:{tag:{ScoreResolveBase:1b}}},distance=..1,limit=1] Item.tag.display.Name
tag @e[distance=..0.0001,limit=1,tag=DamageLogs,tag=NotInsert] remove NotInsert
execute positioned ~ ~200 ~ run kill @e[type=item,nbt={Item:{tag:{ScoreResolveBase:1b}}},distance=..1,limit=1]