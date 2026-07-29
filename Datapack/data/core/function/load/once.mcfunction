#> core:load/once
# 初期設定用のコマンド(一度きり実行)

# データパックのバージョン
    data modify storage global: version set value "v0.3.0"

# スコアボード
    scoreboard objectives add Rejoin custom:leave_game "ワールドRejoin処理"
    scoreboard objectives add RightClick used:warped_fungus_on_a_stick "右クリック"
    scoreboard objectives add PlayerID dummy "プレイヤーID"

# 汎用スコア
    scoreboard objectives add Temporary dummy "一時スコア"
    scoreboard objectives add Constant dummy "定数"
    function core:load/constant

# teamの設定
    function core:load/team

# ゲームルールの設定
    function core:load/gamerule

# ステータス用スコア
    scoreboard objectives add DmgReceived dummy "被ダメージ"
    scoreboard objectives add HPRatio dummy "HP割合"
    scoreboard objectives setdisplay list HPRatio
    scoreboard objectives modify HPRatio rendertype hearts
    scoreboard objectives add MPRatio dummy "MP割合"
    scoreboard objectives add PrevMPRatio dummy "MP割合記録"
    scoreboard objectives add HPRTimer dummy "HP回復Timer"
    scoreboard objectives add MPRTimer dummy "MP回復Timer"
    scoreboard objectives add NextEXP dummy "必要経験値"
    scoreboard objectives add SkillTimer dummy "スキル用タイマー"
    scoreboard objectives add MaxPShield dummy "最大盾数"
    scoreboard objectives add PShield dummy "盾数"
    scoreboard objectives add MaxHArrow dummy "最大矢数"
    scoreboard objectives add HArrow dummy "矢数"
    scoreboard objectives add MaxOxygen dummy "最大酸素"
    scoreboard objectives add Oxygen dummy "酸素"
    scoreboard objectives add PreviousSlot dummy "前選択スロット"
    # 値
        scoreboard objectives add HP dummy "現HP"
        scoreboard objectives add MP dummy "現MP"
        scoreboard objectives add MaxHP dummy "最大HP"
        scoreboard objectives add MaxMP dummy "最大MP"
        scoreboard objectives add HPR dummy "HP自然回復"
        scoreboard objectives add MPR dummy "MP自然回復"
        scoreboard objectives add STR dummy "物理攻撃力"
        scoreboard objectives add INT dummy "魔法攻撃力"
        scoreboard objectives add DEX dummy "器用さ"
        scoreboard objectives add DEF dummy "防御力"
        scoreboard objectives add AGI dummy "素早さ"
        scoreboard objectives add CRT dummy "会心"
        scoreboard objectives add LUK dummy "幸運"
        scoreboard objectives add LVL dummy "レベル"
        scoreboard objectives add EXP dummy "経験値"
        scoreboard objectives add Gold dummy "ゴールド"
    # 基礎値
        scoreboard objectives add BaseHP dummy "基礎最大HP"
        scoreboard objectives add BaseMP dummy "基礎最大MP"
        scoreboard objectives add BaseHPR dummy "基礎HPR"
        scoreboard objectives add BaseMPR dummy "基礎MPR"
        scoreboard objectives add BaseSTR dummy "基礎STR"
        scoreboard objectives add BaseINT dummy "基礎INT"
        scoreboard objectives add BaseDEX dummy "基礎DEX"
        scoreboard objectives add BaseDEF dummy "基礎DEF"
        scoreboard objectives add BaseAGI dummy "基礎AGI"
        scoreboard objectives add BaseCRT dummy "基礎CRT"
        scoreboard objectives add BaseLUK dummy "基礎LUK"
    # 補正値
        scoreboard objectives add BonusHP dummy "補正最大HP"
        scoreboard objectives add BonusMP dummy "補正最大MP"
        scoreboard objectives add BonusHPR dummy "補正HPR"
        scoreboard objectives add BonusMPR dummy "補正MPR"
        scoreboard objectives add BonusSTR dummy "補正STR"
        scoreboard objectives add BonusINT dummy "補正INT"
        scoreboard objectives add BonusDEX dummy "補正DEX"
        scoreboard objectives add BonusDEF dummy "補正DEF"
        scoreboard objectives add BonusAGI dummy "補正AGI"
        scoreboard objectives add BonusCRT dummy "補正CRT"
        scoreboard objectives add BonusLUK dummy "補正LUK"
    # バフ
        scoreboard objectives add BuffHP dummy "バフ最大HP"
        scoreboard objectives add BuffMP dummy "バフ最大MP"
        scoreboard objectives add BuffHPR dummy "バフHPR"
        scoreboard objectives add BuffMPR dummy "バフMPR"
        scoreboard objectives add BuffSTR dummy "バフSTR"
        scoreboard objectives add BuffINT dummy "バフINT"
        scoreboard objectives add BuffDEX dummy "バフDEX"
        scoreboard objectives add BuffDEF dummy "バフDEF"
        scoreboard objectives add BuffAGI dummy "バフAGI"
        scoreboard objectives add BuffCRT dummy "バフCRT"
        scoreboard objectives add BuffLUK dummy "バフLUK"