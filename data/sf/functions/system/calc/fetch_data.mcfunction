#計算データ読み込み
    execute unless data storage sf:data {Calc:{Base:[]}} run data modify storage sf:data Calc.RegisterData.Operator set from storage sf:data Calc.Base[0].Operator
    execute unless data storage sf:data {Calc:{Base:[]}} store success score $isSuccess GlobalVer_CB run data modify storage sf:data Calc.RegisterData.Value set from storage sf:data Calc.Base[0].Value
    execute if score $isSuccess GlobalVer_CB matches 0 run data modify storage sf:data Calc.RegisterData.Value set value 0
    execute unless data storage sf:data {Calc:{Base:[]}} store success score $isSuccess GlobalVer_CB run data modify storage sf:data Calc.RegisterData.Target set from storage sf:data Calc.Base[0].Target
    execute if score $isSuccess GlobalVer_CB matches 0 run data modify storage sf:data Calc.RegisterData.Target set value "null"
#実計算部へ
    function sf:system/calc/core
#計算が残ってたらループ
    execute if data storage sf:data Calc.Base[0] run function sf:system/calc/fetch_data