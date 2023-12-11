#> player:ui/skill_bar/_
# ため攻撃用のバー

# $SkillBarの溜まり具合(弓/その他武器)
    execute if predicate player:hold_weapon/not_bow run scoreboard players operation $SkillBar Temporary = @s SneakTime
    execute unless score $SkillBar Temporary matches 0.. if predicate player:hold_weapon/bow/_ run scoreboard players operation $SkillBar Temporary = @s UsingBow

# ため攻撃のチャージ率に応じたバー
    execute if score @s SkillTimer matches 0 if score $SkillBar Temporary matches 2.. run function player:ui/skill_bar/charge
    scoreboard players reset $SkillBar Temporary

# クールダウン中はクールダウン率を表示
    execute if score @s SkillTimer matches 1.. run function player:ui/skill_bar/cooldown