scoreboard players operation $ST:Rand_X Random_CB = $seed GlobalVer_CB
execute if score $ST:Rand_X Random_CB matches 0 run scoreboard players set $ST:Rand_X Random_CB 1
data merge storage chenbr:sf {data:{skillTree:{1:[B;],2:[B;],3:[B;],4:[B;]}}}
function sf:skilltree/generate/loop