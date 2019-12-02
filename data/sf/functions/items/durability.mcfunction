execute store result score @s Global run data get entity @s SelectedItem.tag.Durability
scoreboard players remove @s Global 1
execute if score @s Global matches ..0 run replaceitem entity @s weapon.mainhand minecraft:air
execute if score @s Global matches ..0 at @s run playsound entity.item.break master @s
execute if score @s Global matches ..0 at @s run tellraw @s [{"text":"* ","color":"white"},{"text":"武器が壊れてしまった...","color":"red"}]
execute store result entity @s SelectedItem.tag.Durability int 1 run scoreboard players get @s Global
scoreboard players reset @s Global