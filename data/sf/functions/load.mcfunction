#suffixとして "_CB" を使用
scoreboard objectives add GlobalVer_CB dummy {"text":"ワールド進行度"}
#進行度初回セット
execute unless score GlobalProgress GlobalVer_CB matches -2147483648.. run function sf:load_first