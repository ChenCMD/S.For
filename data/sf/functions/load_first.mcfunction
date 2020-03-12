#VSCodeExtension: Datapack Helper Plus Define
    #define entity $ Variables
    #define entity $Global Temporary data is this
    #define storage chenbr:sf
    #define entity 10-10-10-10-10
#色々使うseed
    execute store result score $seed GlobalVer_CB run seed
    #define entity $seed
    function sf:skilltree/generate/main
#gamerule
    gamerule showDeathMessages false
#チーム
    team add HP-High {"text":"HP 11/20-20/20"}
    team add HP-Medium {"text":"HP 6/20-10/20"}
    team add HP-Low {"text":"HP 0/20-5/20"}
    team add Died {"text":"Died"}
    team modify HP-High color green
    team modify HP-Medium color yellow
    team modify HP-Low color red
    team modify Died color dark_gray
#schedule
    schedule function sf:1min_clock 60s replace
#通常使用スコアボード
    scoreboard objectives add Mana_CB dummy {"text":"マナ"}
    scoreboard objectives add C.Mana_CB dummy {"text":"結晶マナ"}
    scoreboard objectives add C.ManaMAX_CB dummy {"text":"結晶マナ所持上限"}

    scoreboard objectives add UserID_CB dummy {"text":"プレイヤー固有ID"}

    scoreboard objectives add W.CoolTime_CB dummy {"text":"武器クールタイム"}
    scoreboard objectives add W.PreCoolTime_CB dummy {"text":"武器クールタイム保持"}
    scoreboard objectives add ATK_CB dummy {"text":"攻撃力"}
    scoreboard objectives add CRITRate_CB dummy {"text":"クリティカル確率"}
    scoreboard objectives add BowATK_CB dummy {"text":"弓攻撃力保存"}
    scoreboard objectives add BowCRITRate_CB dummy {"text":"クリティカル確率"}
    scoreboard objectives add DEF_CB dummy {"text":"防御力"}

    scoreboard objectives add HealthMAX_CB dummy {"text":"最大体力"}
    scoreboard objectives add Health_CB dummy {"text":"現在体力"}
    scoreboard objectives add PerHealth_CB dummy {"text":"体力割合値 上限20"}
    scoreboard objectives modify PerHealth_CB rendertype hearts

    scoreboard objectives add MobATK_CB dummy {"text":"MOB攻撃力"}
    scoreboard objectives add MobHealth_CB dummy {"text":"MOB体力"}
    scoreboard objectives add MobXP_CB dummy {"text":"MOB経験値"}

    scoreboard objectives add A.CheckA0_CB dummy {"text":"装備を付けたことを検知"}
    scoreboard objectives add A.CheckA1_CB dummy {"text":"装備を付けたことを検知"}
    scoreboard objectives add A.CheckA2_CB dummy {"text":"装備を付けたことを検知"}
    scoreboard objectives add A.CheckA3_CB dummy {"text":"装備を付けたことを検知"}
    scoreboard objectives add A.CheckB0_CB dummy {"text":"装備を外したことを検知"}
    scoreboard objectives add A.CheckB1_CB dummy {"text":"装備を外したことを検知"}
    scoreboard objectives add A.CheckB2_CB dummy {"text":"装備を外したことを検知"}
    scoreboard objectives add A.CheckB3_CB dummy {"text":"装備を外したことを検知"}
#クラフト関連の
    #scoreboard objectives add Craft.D.103 minecraft.crafted:minecraft.diamond_helmet {"text":"クラフト: diamond_helmet"}
    #scoreboard objectives add Craft.D.102 minecraft.crafted:minecraft.diamond_chestplate {"text":"クラフト: diamond_chestplate"}
    #scoreboard objectives add Craft.D.101 minecraft.crafted:minecraft.diamond_leggings {"text":"クラフト: diamond_leggings"}
    #scoreboard objectives add Craft.D.100 minecraft.crafted:minecraft.diamond_boots {"text":"クラフト: diamond_boots"}
    #scoreboard objectives add Craft.G.103 minecraft.crafted:minecraft.golden_helmet {"text":"クラフト: golden_helmet"}
    #scoreboard objectives add Craft.G.102 minecraft.crafted:minecraft.golden_chestplate {"text":"クラフト: golden_chestplate"}
    #scoreboard objectives add Craft.G.101 minecraft.crafted:minecraft.golden_leggings {"text":"クラフト: golden_leggings"}
    #scoreboard objectives add Craft.G.100 minecraft.crafted:minecraft.golden_boots {"text":"クラフト: golden_boots"}
    #scoreboard objectives add Craft.I.103 minecraft.crafted:minecraft.iron_helmet {"text":"クラフト: iron_helmet"}
    #scoreboard objectives add Craft.I.102 minecraft.crafted:minecraft.iron_chestplate {"text":"クラフト: iron_chestplate"}
    #scoreboard objectives add Craft.I.101 minecraft.crafted:minecraft.iron_leggings {"text":"クラフト: iron_leggings"}
    #scoreboard objectives add Craft.I.100 minecraft.crafted:minecraft.iron_boots {"text":"クラフト: iron_boots"}
    #scoreboard objectives add Craft.C.103 minecraft.crafted:minecraft.chainmail_helmet {"text":"クラフト: chainmail_helmet"}
    #scoreboard objectives add Craft.C.102 minecraft.crafted:minecraft.chainmail_chestplate {"text":"クラフト: chainmail_chestplate"}
    #scoreboard objectives add Craft.C.101 minecraft.crafted:minecraft.chainmail_leggings {"text":"クラフト: chainmail_leggings"}
    #scoreboard objectives add Craft.C.100 minecraft.crafted:minecraft.chainmail_boots {"text":"クラフト: chainmail_boots"}
    #scoreboard objectives add Craft.L.103 minecraft.crafted:minecraft.leather_helmet {"text":"クラフト: leather_helmet"}
    #scoreboard objectives add Craft.L.102 minecraft.crafted:minecraft.leather_chestplate {"text":"クラフト: leather_chestplate"}
    #scoreboard objectives add Craft.L.101 minecraft.crafted:minecraft.leather_leggings {"text":"クラフト: leather_leggings"}
    #scoreboard objectives add Craft.L.100 minecraft.crafted:minecraft.leather_boots {"text":"クラフト: leather_boots"}

#条件付きスコアボード
    scoreboard objectives add Respawn_CB minecraft.custom:minecraft.time_since_death {"text":"リスポーン検知"}
    scoreboard objectives add Death_CB minecraft.custom:minecraft.deaths {"text":"死亡検知"}
    scoreboard objectives add FirstJoin_CB minecraft.custom:minecraft.play_one_minute {"text":"初回Join検知"}
    scoreboard objectives add UseBow_CB minecraft.used:minecraft.bow {"text":"使用検知: 弓"}
    scoreboard objectives add onDamage_CB minecraft.custom:minecraft.damage_resisted {"text":"被ダメージ検知"}
    scoreboard objectives add onAttack_CB minecraft.custom:minecraft.damage_dealt {"text":"与ダメージ検知"}
    scoreboard objectives add Sneak_CB minecraft.custom:minecraft.sneak_time {"text":"スニーク検知"}
#乱数生成用
    scoreboard objectives add Random_CB dummy {"text":"疑似乱数生成用"}
    function sf:system/rng/modifier_gene
    scoreboard players operation $Rand_X Random_CB = $seed GlobalVer_CB
    scoreboard players set $Rand_A Random_CB 48271
    scoreboard players set $Rand_M Random_CB 2147483647

#難易度について
    # Difficulty = 1 :        Easy : (Normal|Elite)Mob体力倍率 x1  |x8  : M->Pダメージ x0.8  : クリティカル倍率 2
    # Difficulty = 2 :      Normal : (Normal|Elite)Mob体力倍率 x1  |x10 : M->Pダメージ x1.0  : クリティカル倍率 2
    # Difficulty = 3 :        Hard : (Normal|Elite)Mob体力倍率 x1.5|x14 : M->Pダメージ x1.25 : クリティカル倍率 2
    # Difficulty = 4 :  IMPOSSIBLE : (Normal|Elite)Mob体力倍率 x2.0|x25 : M->Pダメージ x1.25 : クリティカル倍率 4
    #リセット
        scoreboard players set $Difficulty GlobalVer_CB 0
    #難易度設定フラグ
        scoreboard players set $isSetDifficulty GlobalVer_CB 0

#初期化
    scoreboard players set $ReqXP GlobalVer_CB 500
    scoreboard players set $XP GlobalVer_CB 0
    scoreboard players set $Global UserID_CB 0
    scoreboard players set $Level GlobalVer_CB 1
    scoreboard players set $Global HealthMAX_CB 100
    scoreboard players set @a HealthMAX_CB 100
    scoreboard players set @a Health_CB 100

#GlobalVer周り
    #クリティカル発生率 (NaN%)  Default: 10
        scoreboard players set $DefaultCriticalRate GlobalVer_CB 10
    #クリティカル倍率 (ダメージ*NaN)  Default: 2
        scoreboard players set $CriticalCorrection GlobalVer_CB 2
    #Lvアップ時の最大体力増加量 (+NaN)  Default: 5
        scoreboard players set $AddHealth GlobalVer_CB 5
    #MOB関連
        scoreboard players set $MobBaseHealth GlobalVer_CB 10
        scoreboard players set $MobBaseATK GlobalVer_CB 15
        scoreboard players set $MobBaseXP GlobalVer_CB 15

    #難易度IMP時の回復量にかかる係数 (補正元/1*2)  Default: 5,4
        scoreboard players set $IMPCorrection1 GlobalVer_CB 5
        scoreboard players set $IMPCorrection2 GlobalVer_CB 4

    #進行度保存変数
        scoreboard players set $GlobalProgress GlobalVer_CB 0

#operation用変数
    scoreboard objectives add Const_CB dummy {"text":"定数"}

    scoreboard players set $1 Const_CB 1
    scoreboard players set $2 Const_CB 2
    scoreboard players set $3 Const_CB 3
    scoreboard players set $4 Const_CB 4
    scoreboard players set $5 Const_CB 5
    scoreboard players set $6 Const_CB 6
    scoreboard players set $7 Const_CB 7
    scoreboard players set $8 Const_CB 8
    scoreboard players set $9 Const_CB 9
    scoreboard players set $10 Const_CB 10
    scoreboard players set $11 Const_CB 11
    scoreboard players set $12 Const_CB 12
    scoreboard players set $13 Const_CB 13
    scoreboard players set $14 Const_CB 14
    scoreboard players set $15 Const_CB 15
    scoreboard players set $16 Const_CB 16
    scoreboard players set $17 Const_CB 17
    scoreboard players set $18 Const_CB 18
    scoreboard players set $19 Const_CB 19
    scoreboard players set $20 Const_CB 20
    scoreboard players set $21 Const_CB 21
    scoreboard players set $22 Const_CB 22
    scoreboard players set $23 Const_CB 23
    scoreboard players set $24 Const_CB 24
    scoreboard players set $25 Const_CB 25
    scoreboard players set $26 Const_CB 26
    scoreboard players set $27 Const_CB 27
    scoreboard players set $28 Const_CB 28
    scoreboard players set $29 Const_CB 29
    scoreboard players set $30 Const_CB 30
    scoreboard players set $31 Const_CB 31
    scoreboard players set $32 Const_CB 32
    scoreboard players set $33 Const_CB 33
    scoreboard players set $34 Const_CB 34
    scoreboard players set $35 Const_CB 35
    scoreboard players set $36 Const_CB 36
    scoreboard players set $37 Const_CB 37
    scoreboard players set $38 Const_CB 38
    scoreboard players set $39 Const_CB 39
    scoreboard players set $40 Const_CB 40
    scoreboard players set $41 Const_CB 41
    scoreboard players set $42 Const_CB 42
    scoreboard players set $43 Const_CB 43
    scoreboard players set $44 Const_CB 44
    scoreboard players set $45 Const_CB 45
    scoreboard players set $46 Const_CB 46
    scoreboard players set $47 Const_CB 47
    scoreboard players set $48 Const_CB 48
    scoreboard players set $49 Const_CB 49
    scoreboard players set $50 Const_CB 50
    scoreboard players set $51 Const_CB 51
    scoreboard players set $52 Const_CB 52
    scoreboard players set $53 Const_CB 53
    scoreboard players set $54 Const_CB 54
    scoreboard players set $55 Const_CB 55
    scoreboard players set $56 Const_CB 56
    scoreboard players set $57 Const_CB 57
    scoreboard players set $58 Const_CB 58
    scoreboard players set $59 Const_CB 59
    scoreboard players set $60 Const_CB 60
    scoreboard players set $61 Const_CB 61
    scoreboard players set $62 Const_CB 62
    scoreboard players set $63 Const_CB 63
    scoreboard players set $64 Const_CB 64
    scoreboard players set $65 Const_CB 65
    scoreboard players set $66 Const_CB 66
    scoreboard players set $67 Const_CB 67
    scoreboard players set $68 Const_CB 68
    scoreboard players set $69 Const_CB 69
    scoreboard players set $70 Const_CB 70
    scoreboard players set $71 Const_CB 71
    scoreboard players set $72 Const_CB 72
    scoreboard players set $73 Const_CB 73
    scoreboard players set $74 Const_CB 74
    scoreboard players set $75 Const_CB 75
    scoreboard players set $76 Const_CB 76
    scoreboard players set $77 Const_CB 77
    scoreboard players set $78 Const_CB 78
    scoreboard players set $79 Const_CB 79
    scoreboard players set $80 Const_CB 80
    scoreboard players set $81 Const_CB 81
    scoreboard players set $82 Const_CB 82
    scoreboard players set $83 Const_CB 83
    scoreboard players set $84 Const_CB 84
    scoreboard players set $85 Const_CB 85
    scoreboard players set $86 Const_CB 86
    scoreboard players set $87 Const_CB 87
    scoreboard players set $88 Const_CB 88
    scoreboard players set $89 Const_CB 89
    scoreboard players set $90 Const_CB 90
    scoreboard players set $91 Const_CB 91
    scoreboard players set $92 Const_CB 92
    scoreboard players set $93 Const_CB 93
    scoreboard players set $94 Const_CB 94
    scoreboard players set $95 Const_CB 95
    scoreboard players set $96 Const_CB 96
    scoreboard players set $97 Const_CB 97
    scoreboard players set $98 Const_CB 98
    scoreboard players set $99 Const_CB 99
    scoreboard players set $100 Const_CB 100
    scoreboard players set $105 Const_CB 105
    scoreboard players set $110 Const_CB 110
    scoreboard players set $115 Const_CB 115
    scoreboard players set $120 Const_CB 120
    scoreboard players set $125 Const_CB 125
    scoreboard players set $130 Const_CB 130
    scoreboard players set $135 Const_CB 135
    scoreboard players set $140 Const_CB 140
    scoreboard players set $145 Const_CB 145
    scoreboard players set $150 Const_CB 150
    scoreboard players set $155 Const_CB 155
    scoreboard players set $160 Const_CB 160
    scoreboard players set $165 Const_CB 165
    scoreboard players set $170 Const_CB 170
    scoreboard players set $175 Const_CB 175
    scoreboard players set $180 Const_CB 180
    scoreboard players set $185 Const_CB 185
    scoreboard players set $190 Const_CB 190
    scoreboard players set $195 Const_CB 195
    scoreboard players set $200 Const_CB 200
    scoreboard players set $250 Const_CB 250
    scoreboard players set $300 Const_CB 300
    scoreboard players set $350 Const_CB 350
    scoreboard players set $400 Const_CB 400
    scoreboard players set $450 Const_CB 450
    scoreboard players set $500 Const_CB 500
    scoreboard players set $550 Const_CB 550
    scoreboard players set $600 Const_CB 600
    scoreboard players set $650 Const_CB 650
    scoreboard players set $700 Const_CB 700
    scoreboard players set $750 Const_CB 750
    scoreboard players set $800 Const_CB 800
    scoreboard players set $850 Const_CB 850
    scoreboard players set $900 Const_CB 900
    scoreboard players set $950 Const_CB 950
    scoreboard players set $1000 Const_CB 1000
    scoreboard players set $2000 Const_CB 2000
    scoreboard players set $3000 Const_CB 3000
    scoreboard players set $4000 Const_CB 4000
    scoreboard players set $5000 Const_CB 5000
    scoreboard players set $6000 Const_CB 6000
    scoreboard players set $7000 Const_CB 7000
    scoreboard players set $8000 Const_CB 8000
    scoreboard players set $9000 Const_CB 9000
    scoreboard players set $10000 Const_CB 10000
    scoreboard players set $20000 Const_CB 20000
    scoreboard players set $30000 Const_CB 30000
    scoreboard players set $40000 Const_CB 40000
    scoreboard players set $50000 Const_CB 50000
    scoreboard players set $60000 Const_CB 60000
    scoreboard players set $70000 Const_CB 70000
    scoreboard players set $80000 Const_CB 80000
    scoreboard players set $90000 Const_CB 90000
    scoreboard players set $100000 Const_CB 100000
    scoreboard players set $200000 Const_CB 200000
    scoreboard players set $300000 Const_CB 300000
    scoreboard players set $400000 Const_CB 400000
    scoreboard players set $500000 Const_CB 500000
    scoreboard players set $600000 Const_CB 600000
    scoreboard players set $700000 Const_CB 700000
    scoreboard players set $800000 Const_CB 800000
    scoreboard players set $900000 Const_CB 900000
    scoreboard players set $1000000 Const_CB 1000000