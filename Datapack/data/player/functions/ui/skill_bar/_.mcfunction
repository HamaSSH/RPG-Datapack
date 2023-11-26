#> player:ui/skill_bar/_
# ため攻撃用のバー

# 初期状態
    data modify storage player:ui skill_bar set value '"\\uE1A0"'

# ため攻撃のチャージ率に応じたバー
    execute if score @s SkillTimer matches 0 if score @s SneakTime matches 2.. run function player:ui/skill_bar/charge

# クールダウン中はクールダウン率を表示
    execute if score @s SkillTimer matches 1.. run function player:ui/skill_bar/cooldown