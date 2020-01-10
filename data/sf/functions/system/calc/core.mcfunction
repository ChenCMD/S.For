#Targetがある場合
    execute if data storage sf:data {Calc:{RegisterData:{Target:"A"}}} run scoreboard players operation $RegisterData Calc_CB = $A Calc_CB
    execute if data storage sf:data {Calc:{RegisterData:{Target:"B"}}} run scoreboard players operation $RegisterData Calc_CB = $B Calc_CB
    execute if data storage sf:data {Calc:{RegisterData:{Target:"C"}}} run scoreboard players operation $RegisterData Calc_CB = $C Calc_CB
    execute if data storage sf:data {Calc:{RegisterData:{Target:"D"}}} run scoreboard players operation $RegisterData Calc_CB = $D Calc_CB
    execute if data storage sf:data {Calc:{RegisterData:{Target:"E"}}} run scoreboard players operation $RegisterData Calc_CB = $E Calc_CB
    execute if data storage sf:data {Calc:{RegisterData:{Target:"F"}}} run scoreboard players operation $RegisterData Calc_CB = $F Calc_CB
    execute if data storage sf:data {Calc:{RegisterData:{Target:"G"}}} run scoreboard players operation $RegisterData Calc_CB = $G Calc_CB
    execute if data storage sf:data {Calc:{RegisterData:{Target:"H"}}} run scoreboard players operation $RegisterData Calc_CB = $H Calc_CB
    execute if data storage sf:data {Calc:{RegisterData:{Target:"I"}}} run scoreboard players operation $RegisterData Calc_CB = $I Calc_CB
    execute if data storage sf:data {Calc:{RegisterData:{Target:"J"}}} run scoreboard players operation $RegisterData Calc_CB = $J Calc_CB
#TargetがnullならValueを$RegisterDataに入れる
    execute if data storage sf:data {Calc:{RegisterData:{Target:"null"}}} store result score $RegisterData Calc_CB run data get storage sf:data Calc.RegisterData.Value
#実際の計算部
    execute if data storage sf:data {Calc:{RegisterData:{Operator:"="}}} run scoreboard players operation @s Calc_CB = $RegisterData Calc_CB
    execute if data storage sf:data {Calc:{RegisterData:{Operator:"+="}}} run scoreboard players operation @s Calc_CB += $RegisterData Calc_CB
    execute if data storage sf:data {Calc:{RegisterData:{Operator:"-="}}} run scoreboard players operation @s Calc_CB -= $RegisterData Calc_CB
    execute if data storage sf:data {Calc:{RegisterData:{Operator:"*="}}} run scoreboard players operation @s Calc_CB *= $RegisterData Calc_CB
    execute if data storage sf:data {Calc:{RegisterData:{Operator:"/="}}} run scoreboard players operation @s Calc_CB /= $RegisterData Calc_CB
    execute if data storage sf:data {Calc:{RegisterData:{Operator:"%="}}} run scoreboard players operation @s Calc_CB %= $RegisterData Calc_CB
#ちゃんとリセットしようね
    scoreboard players reset $RegisterData Calc_CB
    data remove storage sf:data Calc.RegisterData
    data remove storage sf:data Calc.Base[0]