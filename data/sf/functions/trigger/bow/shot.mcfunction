#onShot
    #矢にプレイヤー識別IDを移植
        scoreboard players operation @e[type=arrow,distance=..5,sort=nearest,limit=1] UserID_CB = @s UserID_CB
        function sf:combat/ranged/use_bow
    #execute if entity @a[nbt={SelectedItem:{tag:{Breakable:1b}}}] run function sf:items/durability
#reset
    scoreboard players reset @s UseBow_CB