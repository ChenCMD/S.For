#ダメージを仮想エンティティに移す
    scoreboard players operation $RegisterDamage ATK_CB = @s ATK_CB
#loot使ってresolveする
    loot spawn ~ ~200 ~ loot sf:message/damage/normal
#要らないので消す
    scoreboard players reset $RegisterDamage
#ダメージ描画用アマスタsummon
    summon armor_stand ~ ~ ~ {PortalCooldown:16,Tags:["DamageLogs","NativeLoad","NotInsert"],NoGravity:1b,Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b,CustomName:"\"\"",CustomNameVisible:1b}
#CustomNameにresolveした数値を入れる
    execute as @e[distance=..0.0001,limit=1,tag=DamageLogs,tag=NotInsert] positioned ~ ~200 ~ run data modify entity @s CustomName set from entity @e[type=item,nbt={Item:{tag:{ScoreResolveBase:1b}}},distance=..1,limit=1] Item.tag.display.Name
#タグ消す
    tag @e[distance=..0.0001,limit=1,tag=DamageLogs,tag=NotInsert] remove NotInsert
#さよなら～
    execute positioned ~ ~200 ~ run kill @e[type=item,nbt={Item:{tag:{ScoreResolveBase:1b}}},distance=..1,limit=1]