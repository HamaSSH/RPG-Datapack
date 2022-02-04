### /reload時の処理、スコアの定義

say reload
# 一時的・定数スコア
  scoreboard objectives add Temporary dummy "一時的"
  scoreboard objectives add Constant dummy "定数"
  function core:constant
# トリガー
  scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time "スニーク"
  scoreboard objectives add right_click minecraft.used:minecraft.carrot_on_a_stick "右クリック"
  scoreboard objectives add bow_shot minecraft.used:minecraft.bow "弓使用"
  scoreboard objectives add relog minecraft.custom:minecraft.leave_game "リログ"
# asset用ID類
  scoreboard objectives add PlayerID dummy "プレイヤーID"
  scoreboard objectives add MagicID dummy "魔法ID"
  scoreboard objectives add MobID dummy "モブID"
# 保持が必要なスコア
  scoreboard objectives add PreviousSlot dummy "選択スロット"
  scoreboard objectives add PreviousHP dummy "HP値保存"
  scoreboard objectives add PreviousMP dummy "MP値保存"
  scoreboard objectives add PreviousSPD dummy "SPD値保存"
  scoreboard objectives add GoldDisplay dummy "Gold表示"
# タイマー
  scoreboard objectives add gold_timer dummy "Gold表示までの時間"
  scoreboard objectives add skill_cd dummy "スキルCD"
  scoreboard objectives add HurtTime dummy "無敵時間"
  scoreboard objectives add FireAttack dummy "火属性攻撃"
  scoreboard objectives add WaterAttack dummy "水属性攻撃"
  scoreboard objectives add ThunderAttack dummy "雷属性攻撃"
  scoreboard objectives add EarthAttack dummy "土属性攻撃"
  scoreboard objectives add WindAttack dummy "風属性攻撃"
# システム
  scoreboard objectives add dmg_dealt dummy "与ダメージ"
  scoreboard objectives add dmg_received dummy "被ダメージ"
# ステータス
  scoreboard objectives add hp dummy "現在のHP"
  scoreboard objectives add mp dummy "現在のMP"
  scoreboard objectives add hp_max dummy "最大HP"
  scoreboard objectives add mp_max dummy "最大MP"
  scoreboard objectives add hp_regen dummy "HP自然回復"
  scoreboard objectives add mp_regen dummy "MP自然回復"
  scoreboard objectives add hp_ratio dummy "HP割合"
  scoreboard objectives add hp_list dummy "HP割合list"
  scoreboard objectives add mp_ratio dummy "MP割合"
  scoreboard objectives add ad dummy "物理攻撃力"
  scoreboard objectives add ap dummy "魔法攻撃力"
  scoreboard objectives add dex dummy "器用さ"
  scoreboard objectives add def dummy "防御力"
  scoreboard objectives add spd dummy "素早さ"
  scoreboard objectives add crt dummy "会心率"
  scoreboard objectives add luk dummy "運"
  scoreboard objectives add lv_assassin dummy "アサシンLV"
  scoreboard objectives add lv_fighter dummy "ファイターLV"
  scoreboard objectives add lv_knight dummy "ナイトLV"
  scoreboard objectives add lv_warrior dummy "ウォーリアLV"
  scoreboard objectives add lv_wizard dummy "ウィザードLV"
  scoreboard objectives add lv_hunter dummy "ハンターLV"
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
  forceload add 0 0 0 0