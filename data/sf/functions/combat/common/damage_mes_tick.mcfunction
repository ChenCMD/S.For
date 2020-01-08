execute as @e[tag=DamageLogs] at @s run tp ~ ~0.01 ~
execute as @e[tag=DamageLogs] if data entity @s {PortalCooldown:0} run kill @s