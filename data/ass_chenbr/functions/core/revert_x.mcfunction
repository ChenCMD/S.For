#配列に戻す
    data modify storage chenbr:ass_data Array prepend from storage chenbr:ass_data ArrayCacheX[]
#remove
    data remove storage chenbr:ass_data ArrayCacheX[0]