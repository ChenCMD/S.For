scoreboard players operation $RegisterDamage GlobalVer_CB = @s ATK_CB

execute if score @s ATK_CB matches 10000.. if score $RegisterDamage GlobalVer_CB matches 10000..19999 run summon minecraft:armor_stand ^-0.2 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"1\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 10000.. if score $RegisterDamage GlobalVer_CB matches 20000..29999 run summon minecraft:armor_stand ^-0.2 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"2\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 10000.. if score $RegisterDamage GlobalVer_CB matches 30000..39999 run summon minecraft:armor_stand ^-0.2 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"3\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 10000.. if score $RegisterDamage GlobalVer_CB matches 40000..49999 run summon minecraft:armor_stand ^-0.2 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"4\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 10000.. if score $RegisterDamage GlobalVer_CB matches 50000..59999 run summon minecraft:armor_stand ^-0.2 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"5\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 10000.. if score $RegisterDamage GlobalVer_CB matches 60000..69999 run summon minecraft:armor_stand ^-0.2 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"6\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 10000.. if score $RegisterDamage GlobalVer_CB matches 70000..79999 run summon minecraft:armor_stand ^-0.2 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"7\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 10000.. if score $RegisterDamage GlobalVer_CB matches 80000..89999 run summon minecraft:armor_stand ^-0.2 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"8\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 10000.. if score $RegisterDamage GlobalVer_CB matches 90000..99999 run summon minecraft:armor_stand ^-0.2 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"9\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}

execute if score @s ATK_CB matches 1000.. if score $RegisterDamage GlobalVer_CB matches 10000..99999 run scoreboard players operation $RegisterDamage GlobalVer_CB %= $10000 AddTmp
execute if score @s ATK_CB matches 1000.. if score $RegisterDamage GlobalVer_CB matches 0..999 run summon minecraft:armor_stand ^-0.32 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"0\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 1000.. if score $RegisterDamage GlobalVer_CB matches 1000..1999 run summon minecraft:armor_stand ^-0.32 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"1\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 1000.. if score $RegisterDamage GlobalVer_CB matches 2000..2999 run summon minecraft:armor_stand ^-0.32 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"2\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 1000.. if score $RegisterDamage GlobalVer_CB matches 3000..3999 run summon minecraft:armor_stand ^-0.32 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"3\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 1000.. if score $RegisterDamage GlobalVer_CB matches 4000..4999 run summon minecraft:armor_stand ^-0.32 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"4\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 1000.. if score $RegisterDamage GlobalVer_CB matches 5000..5999 run summon minecraft:armor_stand ^-0.32 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"5\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 1000.. if score $RegisterDamage GlobalVer_CB matches 6000..6999 run summon minecraft:armor_stand ^-0.32 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"6\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 1000.. if score $RegisterDamage GlobalVer_CB matches 7000..7999 run summon minecraft:armor_stand ^-0.32 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"7\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 1000.. if score $RegisterDamage GlobalVer_CB matches 8000..8999 run summon minecraft:armor_stand ^-0.32 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"8\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 1000.. if score $RegisterDamage GlobalVer_CB matches 9000..9999 run summon minecraft:armor_stand ^-0.32 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"9\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}

execute if score @s ATK_CB matches 100.. if score $RegisterDamage GlobalVer_CB matches 1000..9999 run scoreboard players operation $RegisterDamage GlobalVer_CB %= $1000 AddTmp
execute if score @s ATK_CB matches 100.. if score $RegisterDamage GlobalVer_CB matches 0..99 run summon minecraft:armor_stand ^-0.44 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"0\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 100.. if score $RegisterDamage GlobalVer_CB matches 100..199 run summon minecraft:armor_stand ^-0.44 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"1\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 100.. if score $RegisterDamage GlobalVer_CB matches 200..299 run summon minecraft:armor_stand ^-0.44 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"2\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 100.. if score $RegisterDamage GlobalVer_CB matches 300..399 run summon minecraft:armor_stand ^-0.44 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"3\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 100.. if score $RegisterDamage GlobalVer_CB matches 400..499 run summon minecraft:armor_stand ^-0.44 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"4\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 100.. if score $RegisterDamage GlobalVer_CB matches 500..599 run summon minecraft:armor_stand ^-0.44 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"5\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 100.. if score $RegisterDamage GlobalVer_CB matches 600..699 run summon minecraft:armor_stand ^-0.44 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"6\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 100.. if score $RegisterDamage GlobalVer_CB matches 700..799 run summon minecraft:armor_stand ^-0.44 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"7\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 100.. if score $RegisterDamage GlobalVer_CB matches 800..899 run summon minecraft:armor_stand ^-0.44 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"8\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 100.. if score $RegisterDamage GlobalVer_CB matches 900..999 run summon minecraft:armor_stand ^-0.44 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"9\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}

execute if score @s ATK_CB matches 10.. if score $RegisterDamage GlobalVer_CB matches 100..999 run scoreboard players operation $RegisterDamage GlobalVer_CB %= $100 AddTmp
execute if score @s ATK_CB matches 10.. if score $RegisterDamage GlobalVer_CB matches 0..9 run summon minecraft:armor_stand ^-0.56 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"0\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 10.. if score $RegisterDamage GlobalVer_CB matches 10..19 run summon minecraft:armor_stand ^-0.56 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"1\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 10.. if score $RegisterDamage GlobalVer_CB matches 20..29 run summon minecraft:armor_stand ^-0.56 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"2\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 10.. if score $RegisterDamage GlobalVer_CB matches 30..39 run summon minecraft:armor_stand ^-0.56 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"3\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 10.. if score $RegisterDamage GlobalVer_CB matches 40..49 run summon minecraft:armor_stand ^-0.56 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"4\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 10.. if score $RegisterDamage GlobalVer_CB matches 50..59 run summon minecraft:armor_stand ^-0.56 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"5\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 10.. if score $RegisterDamage GlobalVer_CB matches 60..69 run summon minecraft:armor_stand ^-0.56 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"6\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 10.. if score $RegisterDamage GlobalVer_CB matches 70..79 run summon minecraft:armor_stand ^-0.56 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"7\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 10.. if score $RegisterDamage GlobalVer_CB matches 80..89 run summon minecraft:armor_stand ^-0.56 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"8\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score @s ATK_CB matches 10.. if score $RegisterDamage GlobalVer_CB matches 90..99 run summon minecraft:armor_stand ^-0.56 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"9\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}

execute if score $RegisterDamage GlobalVer_CB matches 10..99 run scoreboard players operation $RegisterDamage GlobalVer_CB %= $10 AddTmp
execute if score $RegisterDamage GlobalVer_CB matches 0 run summon minecraft:armor_stand ^-0.68 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"0\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score $RegisterDamage GlobalVer_CB matches 1 run summon minecraft:armor_stand ^-0.68 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"1\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score $RegisterDamage GlobalVer_CB matches 2 run summon minecraft:armor_stand ^-0.68 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"2\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score $RegisterDamage GlobalVer_CB matches 3 run summon minecraft:armor_stand ^-0.68 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"3\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score $RegisterDamage GlobalVer_CB matches 4 run summon minecraft:armor_stand ^-0.68 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"4\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score $RegisterDamage GlobalVer_CB matches 5 run summon minecraft:armor_stand ^-0.68 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"5\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score $RegisterDamage GlobalVer_CB matches 6 run summon minecraft:armor_stand ^-0.68 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"6\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score $RegisterDamage GlobalVer_CB matches 7 run summon minecraft:armor_stand ^-0.68 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"7\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score $RegisterDamage GlobalVer_CB matches 8 run summon minecraft:armor_stand ^-0.68 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"8\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
execute if score $RegisterDamage GlobalVer_CB matches 9 run summon minecraft:armor_stand ^-0.68 ^1.9 ^0.1 {PortalCooldown:16,Tags:["DamageLogs","NativeLoad"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"{\"text\":\"9\",\"color\":\"red\",\"bold\":true}",CustomNameVisible:1b}
scoreboard players reset $RegisterDamage GlobalVer_CB