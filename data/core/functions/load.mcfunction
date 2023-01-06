say reload
# 一時的・定数スコア
    scoreboard objectives add Temporary dummy "一時的"
    scoreboard objectives add Constant dummy "定数"
    function core:constant
# トリガー
    scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time "スニーク"
    scoreboard objectives add right_click minecraft.used:minecraft.carrot_on_a_stick "右クリック"
    scoreboard objectives add fall_distance minecraft.custom:minecraft.fall_one_cm "落下距離"
    scoreboard objectives add bow_shot minecraft.used:minecraft.bow "弓使用"
    scoreboard objectives add relog minecraft.custom:minecraft.leave_game "リログ"
    scoreboard objectives add UsedFishingRod minecraft.used:minecraft.fishing_rod "浮き投げ検知"
# asset用ID等
    scoreboard objectives add PlayerID dummy "プレイヤーID"
    scoreboard objectives add MagicID dummy "魔法ID"
    scoreboard objectives add MobID dummy "モブID"
# 保持させておくスコア
    scoreboard objectives add Arrow dummy "弓矢"
    scoreboard objectives add LCArrow dummy "左クリック弓矢"
    scoreboard objectives add BowCharge dummy "弓溜め"
    scoreboard objectives add PrevBowCharge dummy "弓溜め1tick前"
    scoreboard objectives add ConsumeItem dummy "アイテム消費"
    scoreboard objectives add ConsumingItem dummy "アイテム消費長押し検知"
    scoreboard objectives add PreviousArrow dummy "弓矢値保存"
    scoreboard objectives add PreviousSlot dummy "選択スロット"
    scoreboard objectives add PreviousHPRatio dummy "HP割合保存"
    scoreboard objectives add PreviousMP dummy "MP値保存"
    scoreboard objectives add PreviousSPD dummy "SPD値保存"
    scoreboard objectives add GoldDisplay dummy "Gold表示"
    scoreboard objectives add FallDistance dummy "畑荒らし対策"
# タイマー
    scoreboard objectives add Timer dummy "汎用タイマー"
    scoreboard objectives add flash_timer dummy "懐中電灯"
    scoreboard objectives add buff_timer dummy "バフタイマー"
    scoreboard objectives add ai_timer dummy "敵モブAI"
    scoreboard objectives add InCombat dummy "戦闘タイマー"
    scoreboard objectives add gold_timer dummy "Gold表示までの時間"
    scoreboard objectives add menu_timer dummy "メニューを開いている時間"
    scoreboard objectives add skill_cd dummy "スキルCD"
    scoreboard objectives add HurtTime dummy "無敵時間"
    scoreboard objectives add ElementAttack dummy "属性攻撃"
    scoreboard objectives add FireAttack dummy "火属性攻撃"
    scoreboard objectives add WaterAttack dummy "水属性攻撃"
    scoreboard objectives add ThunderAttack dummy "雷属性攻撃"
    scoreboard objectives add EarthAttack dummy "土属性攻撃"
    scoreboard objectives add WindAttack dummy "風属性攻撃"
# システム
    scoreboard objectives add dmg_dealt dummy "与ダメージ"
    scoreboard objectives add dmg_received dummy "被ダメージ"
    scoreboard objectives add page dummy "ページ"
# ステータス
    scoreboard objectives add hp dummy "現在のHP"
    scoreboard objectives add mp dummy "現在のMP"
    scoreboard objectives add hp_max dummy "最大HP"
    scoreboard objectives add mp_max dummy "最大MP"
    scoreboard objectives add hp_regen dummy "HP自然回復"
    scoreboard objectives add hp_regen_timer dummy "HP回復タイマー"
    scoreboard objectives add mp_regen dummy "MP自然回復"
    scoreboard objectives add mp_regen_timer dummy "MP回復タイマー"
    scoreboard objectives add hp_ratio dummy "HP割合"
    scoreboard objectives add hp_list dummy "HP割合list"
    scoreboard objectives add mp_ratio dummy "MP割合"
    scoreboard objectives add ad dummy "物理攻撃力"
    scoreboard objectives add ap dummy "魔法攻撃力"
    scoreboard objectives add dex dummy "器用さ"
    scoreboard objectives add def dummy "防御力"
    scoreboard objectives add spd dummy "素早さ"
    scoreboard objectives add crt dummy "会心率"
    scoreboard objectives add luk dummy "幸運"
    scoreboard objectives add cdr dummy "CD軽減"
    scoreboard objectives add lv_assassin dummy "アサシンLV"
    scoreboard objectives add lv_fighter dummy "ファイターLV"
    scoreboard objectives add lv_knight dummy "ナイトLV"
    scoreboard objectives add lv_warrior dummy "ウォーリアLV"
    scoreboard objectives add lv_wizard dummy "ウィザードLV"
    scoreboard objectives add lv_hunter dummy "ハンターLV"
    scoreboard objectives add skill_level dummy "スキルレベル"
    scoreboard objectives add level dummy "レベル"
    scoreboard objectives add xp_assassin dummy "アサシンXP"
    scoreboard objectives add xp_fighter dummy "ファイターXP"
    scoreboard objectives add xp_knight dummy "ナイトXP"
    scoreboard objectives add xp_warrior dummy "ウォーリアXP"
    scoreboard objectives add xp_wizard dummy "ウィザードXP"
    scoreboard objectives add xp_hunter dummy "ハンターXP"
    scoreboard objectives add xp_gained dummy "取得経験値"
    scoreboard objectives add xp_next dummy "必要経験値"
    scoreboard objectives add xp dummy "経験値"
    scoreboard objectives add gold_gained dummy "取得ゴールド"
    scoreboard objectives add gold dummy "ゴールド"
# ステータス基礎値
    scoreboard objectives add hp_base dummy "基礎HP"
    scoreboard objectives add mp_base dummy "基礎MP"
    scoreboard objectives add hp_regen_base dummy "基礎HPR"
    scoreboard objectives add mp_regen_base dummy "基礎MPR"
    scoreboard objectives add ad_base dummy "基礎AD"
    scoreboard objectives add ap_base dummy "基礎AP"
    scoreboard objectives add dex_base dummy "基礎DEX"
    scoreboard objectives add def_base dummy "基礎DEF"
    scoreboard objectives add spd_base dummy "基礎SPD"
    scoreboard objectives add crt_base dummy "基礎CRT"
    scoreboard objectives add luk_base dummy "基礎LUK"
# ステータス追加値
    scoreboard objectives add hp_bonus dummy "追加HP"
    scoreboard objectives add mp_bonus dummy "追加MP"
    scoreboard objectives add hp_regen_bonus dummy "追加HPR"
    scoreboard objectives add mp_regen_bonus dummy "追加MPR"
    scoreboard objectives add ad_bonus dummy "追加AD"
    scoreboard objectives add ap_bonus dummy "追加AP"
    scoreboard objectives add dex_bonus dummy "追加DEX"
    scoreboard objectives add def_bonus dummy "追加DEF"
    scoreboard objectives add spd_bonus dummy "追加SPD"
    scoreboard objectives add crt_bonus dummy "追加CRT"
    scoreboard objectives add luk_bonus dummy "追加LUK"
# 職業パッシブスキルステータス補正値
    scoreboard objectives add hp_regen_class dummy "職業HPR"
    scoreboard objectives add mp_regen_class dummy "職業MPR"
    scoreboard objectives add ad_class dummy "職業AD"
    scoreboard objectives add ap_class dummy "職業AP"
    scoreboard objectives add dex_class dummy "職業DEX"
    scoreboard objectives add def_class dummy "職業DEF"
    scoreboard objectives add spd_class dummy "職業SPD"
    scoreboard objectives add crt_class dummy "職業CRT"
    scoreboard objectives add luk_class dummy "職業LUK"
# ステータスバフ
    scoreboard objectives add assassin_crt dummy "会心バフ"
    scoreboard objectives add hp_buff dummy "HPバフ"
    scoreboard objectives add mp_buff dummy "MPバフ"
    scoreboard objectives add hp_regen_buff dummy "HPRバフ"
    scoreboard objectives add mp_regen_buff dummy "MPRバフ"
    scoreboard objectives add ad_buff dummy "ADバフ"
    scoreboard objectives add ap_buff dummy "APバフ"
    scoreboard objectives add dex_buff dummy "DEXバフ"
    scoreboard objectives add def_buff dummy "DEFバフ"
    scoreboard objectives add spd_buff dummy "SPDバフ"
    scoreboard objectives add crt_buff dummy "CRTバフ"
    scoreboard objectives add luk_buff dummy "LUKバフ"
# チーム定義
    team add Enemy
    team add NoCollision "重なり判定無視"
    team modify NoCollision collisionRule never
    team add Assassin "アサシン"
    team modify Assassin prefix "【アサシン】"
    team modify Assassin collisionRule never
    team add Fighter "ファイター"
    team modify Fighter prefix "【ファイター】"
    team modify Fighter collisionRule never
    team add Knight "ナイト"
    team modify Knight prefix "【ナイト】"
    team modify Knight collisionRule never
    team add Warrior "ウォーリア"
    team modify Warrior prefix "【ウォーリア】"
    team modify Warrior collisionRule never
    team add Wizard "ウィザード"
    team modify Wizard prefix "【ウィザード】"
    team modify Wizard collisionRule never
    team add Hunter "ハンター"
    team modify Hunter prefix "【ハンター】"
    team modify Hunter collisionRule never
# forceload
    execute in overworld run forceload add -1 -1 0 0
    setblock 0 0 0 minecraft:white_shulker_box