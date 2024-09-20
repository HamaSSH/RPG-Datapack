#> player:class/paladin/passive/update
# ステータス更新時に実行するパッシブスキル関連

# 適正武器「槍の装備時ステータスＵＰ」
    execute if predicate player:class/weapon/paladin run function player:class/paladin/passive/weapon

# リファイン「受けるバフの強化＋デバフ弱化」
    execute if score @s PassiveSkill1 matches 1.. run function player:class/paladin/passive/skill1/_

# スペルスラスト「物理攻撃に追加魔法ダメージ」
    execute if score @s PassiveSkill2 matches 1.. run function player:class/paladin/passive/skill2/_

# グレイスシールド「被ダメージを低減する盾をチャージ」
    execute if score @s PassiveSkill3 matches 1.. run function player:class/paladin/passive/skill3/_

# エンハンスメント「バフを受けている間ステータスＵＰ」
    execute if score @s PassiveSkill4 matches 1.. run function player:class/paladin/passive/skill4/_