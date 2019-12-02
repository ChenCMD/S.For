#防具の防御力処理
    #付けた時の
        #103
            scoreboard players set @a[nbt={Inventory:[{Slot:103b,tag:{isArmor:1b}}]},scores={A.CheckA3_CB=1}] A.CheckA3_CB 2
            execute as @a[scores={A.CheckA3_CB=2}] run function player_support:armor
            scoreboard players reset @a[nbt={Inventory:[{Slot:103b,tag:{isArmor:1b}}]}] A.CheckA3_CB
            scoreboard players set @a[nbt=!{Inventory:[{Slot:103b,tag:{isArmor:1b}}]}] A.CheckA3_CB 1
        #102
            scoreboard players set @a[nbt={Inventory:[{Slot:103b,tag:{isArmor:1b}}]},scores={A.CheckA2_CB=1}] A.CheckA2_CB 2
            execute as @a[scores={A.CheckA2_CB=2}] run function player_support:armor
            scoreboard players reset @a[nbt={Inventory:[{Slot:103b,tag:{isArmor:1b}}]}] A.CheckA2_CB
            scoreboard players set @a[nbt=!{Inventory:[{Slot:103b,tag:{isArmor:1b}}]}] A.CheckA2_CB 1
        #101
            scoreboard players set @a[nbt={Inventory:[{Slot:103b,tag:{isArmor:1b}}]},scores={A.CheckA1_CB=1}] A.CheckA1_CB 2
            execute as @a[scores={A.CheckA1_CB=2}] run function player_support:armor
            scoreboard players reset @a[nbt={Inventory:[{Slot:103b,tag:{isArmor:1b}}]}] A.CheckA1_CB
            scoreboard players set @a[nbt=!{Inventory:[{Slot:103b,tag:{isArmor:1b}}]}] A.CheckA1_CB 1
        #100
            scoreboard players set @a[nbt={Inventory:[{Slot:103b,tag:{isArmor:1b}}]},scores={A.CheckA0_CB=1}] A.CheckA0_CB 2
            execute as @a[scores={A.CheckA0_CB=2}] run function player_support:armor
            scoreboard players reset @a[nbt={Inventory:[{Slot:103b,tag:{isArmor:1b}}]}] A.CheckA0_CB
            scoreboard players set @a[nbt=!{Inventory:[{Slot:103b,tag:{isArmor:1b}}]}] A.CheckA0_CB 1
    #外した時の
        #103
            scoreboard players set @a[nbt=!{Inventory:[{Slot:103b,tag:{isArmor:1b}}]},scores={A.CheckB3_CB=1}] A.CheckB3_CB 2
            execute as @a[scores={A.CheckB3_CB=2}] run function player_support:armor
            scoreboard players reset @a[nbt=!{Inventory:[{Slot:103b,tag:{isArmor:1b}}]}] A.CheckB3_CB
            scoreboard players set @a[nbt={Inventory:[{Slot:103b,tag:{isArmor:1b}}]}] A.CheckB3_CB 1
        #102
            scoreboard players set @a[nbt=!{Inventory:[{Slot:102b,tag:{isArmor:1b}}]},scores={A.CheckB2_CB=1}] A.CheckB2_CB 2
            execute as @a[scores={A.CheckB2_CB=2}] run function player_support:armor
            scoreboard players reset @a[nbt=!{Inventory:[{Slot:102b,tag:{isArmor:1b}}]}] A.CheckB2_CB
            scoreboard players set @a[nbt={Inventory:[{Slot:102b,tag:{isArmor:1b}}]}] A.CheckB2_CB 1
        #101
            scoreboard players set @a[nbt=!{Inventory:[{Slot:101b,tag:{isArmor:1b}}]},scores={A.CheckB1_CB=1}] A.CheckB1_CB 2
            execute as @a[scores={A.CheckB1_CB=2}] run function player_support:armor
            scoreboard players reset @a[nbt=!{Inventory:[{Slot:101b,tag:{isArmor:1b}}]}] A.CheckB1_CB
            scoreboard players set @a[nbt={Inventory:[{Slot:101b,tag:{isArmor:1b}}]}] A.CheckB1_CB 1
        #100
            scoreboard players set @a[nbt=!{Inventory:[{Slot:100b,tag:{isArmor:1b}}]},scores={A.CheckB0_CB=1}] A.CheckB0_CB 2
            execute as @a[scores={A.CheckB0_CB=2}] run function player_support:armor
            scoreboard players reset @a[nbt=!{Inventory:[{Slot:100b,tag:{isArmor:1b}}]}] A.CheckB0_CB
            scoreboard players set @a[nbt={Inventory:[{Slot:100b,tag:{isArmor:1b}}]}] A.CheckB0_CB 1