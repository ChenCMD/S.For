#武器のNBTからATKデータを抽出
    execute if entity @s[scores={W.CoolTime_CB=-1},nbt={SelectedItem:{id:"minecraft:bow"}}] store result score @s BowATK_CB run data get entity @s SelectedItem.tag.ATK
    execute if entity @s[scores={W.CoolTime_CB=-1},nbt={SelectedItem:{id:"minecraft:bow"}}] store result score @s BowCRITRate_CB run data get entity @s SelectedItem.tag.CRIT
#クールタイムが終わってなかった場合 ATKに1をset
    execute unless entity @s[scores={W.CoolTime_CB=-1}] run scoreboard players set @s BowATK_CB 1
    execute unless entity @s[scores={W.CoolTime_CB=-1}] run tag @s add NoBowCT
#クリティカル確率デフォルト値加算
    scoreboard players operation @s BowCRITRate_CB += $DefaultCriticalRate GlobalVer_CB
#高速持ち返した場合 ATKに1をset
    execute unless entity @s[nbt={SelectedItem:{id:"minecraft:bow"}}] run scoreboard players set @s BowATK_CB 1
#武器のNBTからCoolTimeデータを抽出保持
    execute store result score @s W.PreCoolTime_CB run data get entity @s SelectedItem.tag.CoolTime
    # tellraw @s ["",{"score":{"name":"@s","objective":"BowATK_CB"},"color":"red"}]