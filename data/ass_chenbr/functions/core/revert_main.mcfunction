#Z→Y→Xの順でキャッシュから配列にデータを戻す
    execute if data storage chenbr:ass_data ArrayCacheZ run function ass_chenbr:core/revert_z
    execute if data storage chenbr:ass_data ArrayCacheY run function ass_chenbr:core/revert_y
    execute if data storage chenbr:ass_data ArrayCacheX run function ass_chenbr:core/revert_x
#キャッシュ消去
    data remove storage chenbr:ass_data ArrayCacheZ
    data remove storage chenbr:ass_data ArrayCacheY
    data remove storage chenbr:ass_data ArrayCacheX