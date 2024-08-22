#> player:class/hunter/passive/update
# ステータス更新時に実行するパッシブスキル関連

# 適正武器「弓・短剣の装備時ステータスＵＰ」
    execute if predicate player:class/weapon/hunter run function player:class/hunter/passive/weapon

# 熟練の弓使い「左クリック矢・矢の貫通・発射本数ＵＰ」
    execute if score @s PassiveSkill1 matches 1.. run function player:class/hunter/passive/skill1/_

# 迅速な身のこなし「地上や水中での移動能力ＵＰ」
    execute if score @s PassiveSkill2 matches 1.. run function player:class/hunter/passive/skill2/_

# 疾風の舞「素早さに応じて攻撃速度ＵＰ」
    execute if score @s PassiveSkill3 matches 1.. run function player:class/hunter/passive/skill3/_

# 会心の極意「会心時にステータス大幅ＵＰ」
    execute if score @s PassiveSkill4 matches 1.. if score @s HunterCrtTimer matches 1.. run function player:class/hunter/passive/skill4/_