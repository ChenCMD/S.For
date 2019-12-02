# say 弓データ抽出
#武器のNBTからATKデータを抽出
execute if entity @s[scores={W.CoolDown_CB=-1},nbt={SelectedItem:{id:"minecraft:bow"}}] store result score @s BowATK_CB run data get entity @s SelectedItem.tag.ATK
#クールタイムが終わってなかった場合 ATKに1をset
execute unless entity @s[scores={W.CoolDown_CB=-1}] run scoreboard players set @s BowATK_CB 1
execute unless entity @s[scores={W.CoolDown_CB=-1}] run tag @s add NoBowCT
#高速持ち返した場合 ATKに1をset
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:bow"}}] run scoreboard players set @s BowATK_CB 1
# tellraw @s ["",{"score":{"name":"@s","objective":"BowATK_CB"},"color":"red"}]
#防御力貫通タグ
tag @s[scores={W.CoolDown_CB=-1},nbt={SelectedItem:{tag:{DEFPiercing:1b}}}] add DEFPiercing
tag @s[nbt=!{SelectedItem:{tag:{DEFPiercing:1b}}}] remove DEFPiercing