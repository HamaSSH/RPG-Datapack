#> player:class/wizard/passive/update
# ステータス更新時に実行するパッシブスキル関連

# 適正武器
    function player:class/wizard/passive/weapon

# 適正武器「杖・魔導書の装備時ステータスＵＰ」
    function player:class/wizard/passive/weapon

# アクセラレート「魔導書のクールダウン低減」
    execute if score @s PassiveSkill1 matches 1.. run function player:class/wizard/passive/skill1/_

# マナサージ「魔法ダメージをＭＰとして回復」
# 敵モブにダメージ与えた際の処理

# エレメントフォーカス「属性纏い概念の強化」
    execute if score @s PassiveSkill3 matches 1.. run function player:class/wizard/passive/skill3/_

# スペルエコー「魔導書を確率で即再発動可能」
    execute if score @s PassiveSkill4 matches 1.. run function player:class/wizard/passive/skill4/_