execute store result score @s MobXP_CB run data get entity @s ArmorItems[3].tag.XP
scoreboard players operation $XP GlobalVer_CB += @s MobXP_CB
tellraw @a[tag=Attacker] [{"text":"* ","color":"white"},{"text":"+","color":"green"},{"score":{"name":"@s","objective":"MobXP"},"color":"green"},{"text":"XP","color":"green"},{"text":" <","color":"white"},{"score":{"name":"$XP","objective":"GlobalVer_CB"},"color":"aqua"},{"text":"/","color":"white"},{"score":{"name":"$ReqXP","objective":" GlobalVer_CB"},"color":"aqua"},{"text":">","color":"white"}]
execute if score $XP GlobalVer_CB >= $ReqXP GlobalVer_CB run function sf:combat/common/levelup
kill @s