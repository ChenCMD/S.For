execute in the_nether store result score $Test:ms GlobalVer_CB run worldborder get
tellraw @a [{"score":{"objective":"GlobalVer_CB","name":"$Test:ms"}},{"text":"ms"}]
scoreboard players reset $Test:ms GlobalVer_CB