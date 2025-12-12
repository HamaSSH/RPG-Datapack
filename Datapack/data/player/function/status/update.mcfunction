#> player:status/update
# ステータスの更新

# 1. 基礎値を代入
    scoreboard players operation @s MaxHP = @s BaseHP
    scoreboard players operation @s MaxMP = @s BaseMP
    scoreboard players operation @s HPR = @s BaseHPR
    scoreboard players operation @s MPR = @s BaseMPR
    scoreboard players operation @s STR = @s BaseSTR
    scoreboard players operation @s INT = @s BaseINT
    scoreboard players operation @s DEX = @s BaseDEX
    scoreboard players operation @s DEF = @s BaseDEF
    scoreboard players operation @s AGI = @s BaseAGI
    scoreboard players operation @s CRT = @s BaseCRT
    scoreboard players operation @s LUK = @s BaseLUK
    # 特殊スコア
        scoreboard players set @s MaxPShield 0
        scoreboard players set @s MaxHArrow 0
        scoreboard players set @s MaxOxygen 100

# 2. 補正ステータスを加算
    # まずリセット
        scoreboard players reset @s BonusHP
        scoreboard players reset @s BonusMP
        scoreboard players reset @s BonusHPR
        scoreboard players reset @s BonusMPR
        scoreboard players reset @s BonusSTR
        scoreboard players reset @s BonusINT
        scoreboard players reset @s BonusDEX
        scoreboard players reset @s BonusDEF
        scoreboard players reset @s BonusAGI
        scoreboard players reset @s BonusCRT
        scoreboard players reset @s BonusLUK
    # 装備ごとに補正ステータスを取得
    # 取得した値をスコアに加算
        scoreboard players operation @s MaxHP += @s BonusHP
        scoreboard players operation @s MaxMP += @s BonusMP
        scoreboard players operation @s HPR += @s BonusHPR
        scoreboard players operation @s MPR += @s BonusMPR
        scoreboard players operation @s STR += @s BonusSTR
        scoreboard players operation @s INT += @s BonusINT
        scoreboard players operation @s DEX += @s BonusDEX
        scoreboard players operation @s DEF += @s BonusDEF
        scoreboard players operation @s AGI += @s BonusAGI
        scoreboard players operation @s CRT += @s BonusCRT
        scoreboard players operation @s LUK += @s BonusLUK

# 3. バフによるステータス加算
    scoreboard players operation @s MaxHP += @s BuffHP
    scoreboard players operation @s MaxMP += @s BuffMP
    scoreboard players operation @s HPR += @s BuffHPR
    scoreboard players operation @s MPR += @s BuffMPR
    scoreboard players operation @s STR += @s BuffSTR
    scoreboard players operation @s INT += @s BuffINT
    scoreboard players operation @s DEX += @s BuffDEX
    scoreboard players operation @s DEF += @s BuffDEF
    scoreboard players operation @s AGI += @s BuffAGI
    scoreboard players operation @s CRT += @s BuffCRT
    scoreboard players operation @s LUK += @s BuffLUK

# 4. エンチャント

# 5. 職業のパッシブによるステータス補正
        scoreboard players set @s MaxPShield 3
        scoreboard players set @s PShield 2

# 6. 最大値を超えた場合の調整
    execute if score @s HP >= @s MaxHP run scoreboard players operation @s HP = @s MaxHP
    execute if score @s MP >= @s MaxMP run scoreboard players operation @s MP = @s MaxMP
    execute if score @s MaxHP matches 99999.. run scoreboard players set @s MaxHP 99999
    execute if score @s MaxMP matches 99999.. run scoreboard players set @s MaxMP 99999
    execute if score @s DEF matches 999.. run scoreboard players set @s DEF 999
    execute if score @s AGI matches 999.. run scoreboard players set @s AGI 999
    execute if score @s CRT matches 999.. run scoreboard players set @s CRT 999
    execute if score @s LUK matches 999.. run scoreboard players set @s LUK 999

# 7. 最小値を下回った場合の調整
    execute if score @s MaxHP matches ..5 run scoreboard players set @s MaxHP 5
    execute if score @s MaxMP matches ..0 run scoreboard players set @s MaxMP 0
    execute if score @s HPR matches ..0 run scoreboard players set @s HPR 0
    execute if score @s MPR matches ..0 run scoreboard players set @s MPR 0
    execute if score @s STR matches ..0 run scoreboard players set @s STR 0
    execute if score @s INT matches ..0 run scoreboard players set @s INT 0
    execute if score @s DEX matches ..0 run scoreboard players set @s DEX 0
    execute if score @s DEF matches ..0 run scoreboard players set @s DEF 0
    execute if score @s CRT matches ..0 run scoreboard players set @s CRT 0
    execute if score @s LUK matches ..0 run scoreboard players set @s LUK 0

# 8. スコアを元にしたattributeの設定

# 9. HP/MPを最大にするタグ

# 10. プレイヤーメニューのステータスの更新

# リセット
    tag @s remove StatusUpdate