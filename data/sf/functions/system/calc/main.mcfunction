#ハードコーディング不要計算システム
#使い方: data modify storage sf:data Calc.Base set ~
#上記のコマンドでCalc.Baseに計算元情報を入れる
#このfunctionを実行後に実行者のスコアボード: Calc_CBに計算結果が入る
#
#計算元情報
#[
#  {
#    Operator: "= += -= *= /= %=",
#    Target: "A ~ J",
#    Value: [int]
#  },
#  {
#    ~
#  }
#]
#
# Operator   : 演算子指定
# Target : セレクター指定 A~Jを指定する function実行前に$A,$B,…$J に入れる
# Value  : 値 Targetと併用した場合Targetが優先される


#前の計算結果をリセット
    scoreboard players set @s Calc_CB 0
#計算
    function sf:system/calc/fetch_data
#DEBUG
    #tellraw @a {"score":{"name":"@s","objective":"Calc_CB"},"color":"gold"}