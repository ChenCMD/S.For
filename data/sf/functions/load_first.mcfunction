#VSCodeExtension: Datapack Helper Plus Define
    #define entity $ Variables
    #define entity $Global Temporary data is this

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
#通常使用スコアボード
    scoreboard objectives add Mana_CB dummy {"text":"マナ"}
    scoreboard objectives add C.Mana_CB dummy {"text":"結晶マナ"}
    scoreboard objectives add C.ManaMAX_CB dummy {"text":"結晶マナ所持上限"}
    scoreboard objectives add W.CoolTime_CB dummy {"text":"プレイヤー武器クールタイム"}
    scoreboard objectives add ATK_CB dummy {"text":"プレイヤー攻撃力"}
    scoreboard objectives add BowATK_CB dummy {"text":"弓攻撃力保存"}
    scoreboard objectives add UserID_CB dummy {"text":"プレイヤー固有ID"}
    scoreboard objectives add HealthMAX_CB dummy {"text":"プレイヤー最大体力"}
    scoreboard objectives add Health_CB dummy {"text":"プレイヤー現在体力"}
    scoreboard objectives add PerHealth_CB dummy {"text":"プレイヤー体力割合値 上限20"}
    scoreboard objectives modify PerHealth_CB rendertype hearts
    scoreboard objectives add DEF_CB dummy {"text":"防御力"}
    scoreboard objectives add DamageType_CB dummy {"text":"攻撃時ダメージ種類一時保存"}
    scoreboard objectives add MobDEF_CB dummy {"text":"MOB防御力一時保存"}
    scoreboard objectives add MobHealth_CB dummy {"text":"MOB体力一時保存"}
    scoreboard objectives add MoBXP_CB dummy {"text":"MOB経験値一時保存"}
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
    scoreboard players set $Rand_X Random_CB 1
    scoreboard players set $Rand_A Random_CB 48271
    scoreboard players set $Rand_M Random_CB 2147483647

#初期化
    scoreboard players set $ReqXP GlobalVer_CB 500
    scoreboard players set $XP GlobalVer_CB 0
    scoreboard players set $Global UserID_CB 0
    scoreboard players set $Difficulty GlobalVer_CB 0
    scoreboard players set $Level GlobalVer_CB 1
    scoreboard players set $Global HealthMAX_CB 100
    scoreboard players set @a HealthMAX_CB 100
    scoreboard players set @a Health_CB 100

#GlobalVer周り
    #クリティカル発生率 (NaN%)  Default: 10
        scoreboard players set $CriticalRate GlobalVer_CB 10
    #クリティカル倍率 (ダメージ*NaN)  Default: 2
        scoreboard players set $CriticalCorrection GlobalVer_CB 2
    #Lvアップ時の必要経験値増加量 (前必要経験値*NaN/100)  Default: 110
        scoreboard players set $ReqXPIncrease GlobalVer_CB 110
    #Lvアップ時の最大体力増加量 (+NaN)  Default: 5
        scoreboard players set $AddHealth GlobalVer_CB 5
    #難易度IMP時の回復量にかかる係数 (補正元/1*2)  Default: 5,4
        scoreboard players set $IMPCorrection1 GlobalVer_CB 5
        scoreboard players set $IMPCorrection2 GlobalVer_CB 4

    #進行度保存変数
        scoreboard players set $GlobalProgress GlobalVer_CB 0

    #operation用変数
        scoreboard players set $1 GlobalVer_CB 1
        scoreboard players set $2 GlobalVer_CB 2
        scoreboard players set $3 GlobalVer_CB 3
        scoreboard players set $4 GlobalVer_CB 4
        scoreboard players set $5 GlobalVer_CB 5
        scoreboard players set $6 GlobalVer_CB 6
        scoreboard players set $7 GlobalVer_CB 7
        scoreboard players set $8 GlobalVer_CB 8
        scoreboard players set $9 GlobalVer_CB 9
        scoreboard players set $10 GlobalVer_CB 10
    scoreboard players set $11 GlobalVer_CB 11
    scoreboard players set $12 GlobalVer_CB 12
    scoreboard players set $13 GlobalVer_CB 13
    scoreboard players set $14 GlobalVer_CB 14
        scoreboard players set $15 GlobalVer_CB 15
    scoreboard players set $16 GlobalVer_CB 16
    scoreboard players set $17 GlobalVer_CB 17
    scoreboard players set $18 GlobalVer_CB 18
    scoreboard players set $19 GlobalVer_CB 19
        scoreboard players set $20 GlobalVer_CB 20
    scoreboard players set $21 GlobalVer_CB 21
    scoreboard players set $22 GlobalVer_CB 22
    scoreboard players set $23 GlobalVer_CB 23
    scoreboard players set $24 GlobalVer_CB 24
        scoreboard players set $25 GlobalVer_CB 25
    scoreboard players set $26 GlobalVer_CB 26
    scoreboard players set $27 GlobalVer_CB 27
    scoreboard players set $28 GlobalVer_CB 28
    scoreboard players set $29 GlobalVer_CB 29
        scoreboard players set $30 GlobalVer_CB 30
    scoreboard players set $31 GlobalVer_CB 31
    scoreboard players set $32 GlobalVer_CB 32
    scoreboard players set $33 GlobalVer_CB 33
    scoreboard players set $34 GlobalVer_CB 34
        scoreboard players set $35 GlobalVer_CB 35
    scoreboard players set $36 GlobalVer_CB 36
    scoreboard players set $37 GlobalVer_CB 37
    scoreboard players set $38 GlobalVer_CB 38
    scoreboard players set $39 GlobalVer_CB 39
        scoreboard players set $40 GlobalVer_CB 40
    scoreboard players set $41 GlobalVer_CB 41
    scoreboard players set $42 GlobalVer_CB 42
    scoreboard players set $43 GlobalVer_CB 43
    scoreboard players set $44 GlobalVer_CB 44
        scoreboard players set $45 GlobalVer_CB 45
    scoreboard players set $46 GlobalVer_CB 46
    scoreboard players set $47 GlobalVer_CB 37
    scoreboard players set $48 GlobalVer_CB 38
    scoreboard players set $49 GlobalVer_CB 39
        scoreboard players set $50 GlobalVer_CB 50
        scoreboard players set $55 GlobalVer_CB 55
        scoreboard players set $60 GlobalVer_CB 60
        scoreboard players set $65 GlobalVer_CB 65
        scoreboard players set $70 GlobalVer_CB 70
        scoreboard players set $75 GlobalVer_CB 75
        scoreboard players set $80 GlobalVer_CB 80
        scoreboard players set $85 GlobalVer_CB 85
        scoreboard players set $90 GlobalVer_CB 90
        scoreboard players set $95 GlobalVer_CB 95
        scoreboard players set $100 GlobalVer_CB 100
        scoreboard players set $105 GlobalVer_CB 105
        scoreboard players set $110 GlobalVer_CB 110
        scoreboard players set $115 GlobalVer_CB 115
        scoreboard players set $120 GlobalVer_CB 120
        scoreboard players set $125 GlobalVer_CB 125
        scoreboard players set $130 GlobalVer_CB 130
        scoreboard players set $135 GlobalVer_CB 135
        scoreboard players set $140 GlobalVer_CB 140
        scoreboard players set $145 GlobalVer_CB 145
        scoreboard players set $150 GlobalVer_CB 150
        scoreboard players set $155 GlobalVer_CB 155
        scoreboard players set $160 GlobalVer_CB 160
        scoreboard players set $165 GlobalVer_CB 165
        scoreboard players set $170 GlobalVer_CB 170
        scoreboard players set $175 GlobalVer_CB 175
        scoreboard players set $180 GlobalVer_CB 180
        scoreboard players set $185 GlobalVer_CB 185
        scoreboard players set $190 GlobalVer_CB 190
        scoreboard players set $195 GlobalVer_CB 195
        scoreboard players set $200 GlobalVer_CB 200
        scoreboard players set $250 GlobalVer_CB 250
        scoreboard players set $300 GlobalVer_CB 300
        scoreboard players set $350 GlobalVer_CB 350
        scoreboard players set $400 GlobalVer_CB 400
        scoreboard players set $450 GlobalVer_CB 450
        scoreboard players set $500 GlobalVer_CB 500
        scoreboard players set $550 GlobalVer_CB 550
        scoreboard players set $600 GlobalVer_CB 600
        scoreboard players set $650 GlobalVer_CB 650
        scoreboard players set $700 GlobalVer_CB 700
        scoreboard players set $750 GlobalVer_CB 750
        scoreboard players set $800 GlobalVer_CB 800
        scoreboard players set $850 GlobalVer_CB 850
        scoreboard players set $900 GlobalVer_CB 900
        scoreboard players set $950 GlobalVer_CB 950
        scoreboard players set $1000 GlobalVer_CB 1000
        scoreboard players set $2000 GlobalVer_CB 2000
        scoreboard players set $3000 GlobalVer_CB 3000
        scoreboard players set $4000 GlobalVer_CB 4000
        scoreboard players set $5000 GlobalVer_CB 5000
        scoreboard players set $6000 GlobalVer_CB 6000
        scoreboard players set $7000 GlobalVer_CB 7000
        scoreboard players set $8000 GlobalVer_CB 8000
        scoreboard players set $9000 GlobalVer_CB 9000
        scoreboard players set $10000 GlobalVer_CB 10000
        scoreboard players set $20000 GlobalVer_CB 20000
        scoreboard players set $30000 GlobalVer_CB 30000
        scoreboard players set $40000 GlobalVer_CB 40000
        scoreboard players set $50000 GlobalVer_CB 50000
        scoreboard players set $60000 GlobalVer_CB 60000
        scoreboard players set $70000 GlobalVer_CB 70000
        scoreboard players set $80000 GlobalVer_CB 80000
        scoreboard players set $90000 GlobalVer_CB 90000
        scoreboard players set $100000 GlobalVer_CB 100000
        scoreboard players set $200000 GlobalVer_CB 200000
        scoreboard players set $300000 GlobalVer_CB 300000
        scoreboard players set $400000 GlobalVer_CB 400000
        scoreboard players set $500000 GlobalVer_CB 500000
        scoreboard players set $600000 GlobalVer_CB 600000
        scoreboard players set $700000 GlobalVer_CB 700000
        scoreboard players set $800000 GlobalVer_CB 800000
        scoreboard players set $900000 GlobalVer_CB 900000
        scoreboard players set $1000000 GlobalVer_CB 1000000