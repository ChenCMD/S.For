#目的座標までの値を減らす
    scoreboard players remove $ASS_Z ASS_ChenBR 1
#removeする前にキャッシュにデータを写す
    data modify storage chenbr:ass_data ArrayCacheZ append from storage chenbr:ass_data Array[0][0][0]
#remove
    data remove storage chenbr:ass_data Array[0][0][0]
#まだ目的座標までの値が1以上の場合再帰
    execute if score $ASS_Z ASS_ChenBR matches 1.. run function ass_chenbr:core/move_z