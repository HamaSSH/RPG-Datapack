#> player:class/fighter/passive/update
# ステータス更新時に実行するパッシブスキル関連

# 適正武器「刀剣・ﾊﾝﾏｰの装備時ステータスＵＰ」
    execute if predicate player:class/weapon/fighter run function player:class/fighter/passive/weapon

# 強靭「ノックバックや落下ダメージの低減」
    execute if score @s PassiveSkill1 matches 1.. run function player:class/fighter/passive/skill1/_

# 闘志「体力が下がるほどステータスが上昇する」
    execute if score @s PassiveSkill2 matches 1.. run function player:class/fighter/passive/skill2/_

# 反撃「被ダメージ時 反撃ダメージを与える」
# 被ダメージ時の処理

# 攻勢「防御力に応じて物理攻撃力が上昇する」
    execute if score @s PassiveSkill4 matches 1.. run function player:class/fighter/passive/skill4/_