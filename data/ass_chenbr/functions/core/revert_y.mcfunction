#配列に戻す
    data modify storage chenbr:ass_data Array[0] prepend from storage chenbr:ass_data ArrayCacheY[]
#remove
    data remove storage chenbr:ass_data ArrayCacheY[0]