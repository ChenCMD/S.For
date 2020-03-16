execute in the_nether store result score $Test:ms GlobalVer_CB run worldborder get
tellraw @a [{"text":"処理速度: "},{"score":{"objective":"GlobalVer_CB","name":"$Test:ms"}},{"text":"ms"}]
worldborder set 60000000
scoreboard players reset $Test:ms GlobalVer_CB