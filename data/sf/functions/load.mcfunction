#suffixとして "_CB" を使用
    scoreboard objectives add GlobalVer_CB dummy {"text":"ワールド変数"}
#進行度初回セット
    execute unless score $GlobalProgress GlobalVer_CB = $GlobalProgress GlobalVer_CB run function sf:load_first