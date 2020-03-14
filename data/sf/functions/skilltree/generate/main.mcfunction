scoreboard players operation $ST:Rand_X Random_CB = $seed GlobalVer_CB
execute if score $ST:Rand_X Random_CB matches 0 run scoreboard players set $ST:Rand_X Random_CB 1
data merge storage chenbr:sf {data:{skillTree:[[B;],[B;],[B;],[B;]]}}
function sf:skilltree/generate/loop