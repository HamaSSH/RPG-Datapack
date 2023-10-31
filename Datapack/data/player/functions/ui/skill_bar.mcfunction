#> player:ui/skill_bar
# ため攻撃用のバー
execute if score @s SkillTimer matches ..0 run data modify storage player:ui skill_bar set value '"\\uF82C\\uF829\\uF828\\uF824\\uE1A1"'
execute if score @s SkillTimer matches 1..99 run data modify storage player:ui skill_bar set value '"\\uF82C\\uF829\\uF828\\uF824\\uE1A2"'
execute if score @s SkillTimer matches 100..199 run data modify storage player:ui skill_bar set value '"\\uF82C\\uF829\\uF828\\uF824\\uE1A3"'
execute if score @s SkillTimer matches 200..299 run data modify storage player:ui skill_bar set value '"\\uF82C\\uF829\\uF828\\uF824\\uE1A4"'
execute if score @s SkillTimer matches 300..399 run data modify storage player:ui skill_bar set value '"\\uF82C\\uF829\\uF828\\uF824\\uE1A5"'

execute if score @s SneakTime matches 2..6 run data modify storage player:ui skill_bar set value '"\\uF82C\\uF829\\uF828\\uF824\\uE1A1"'
execute if score @s SneakTime matches 7..12 run data modify storage player:ui skill_bar set value '"\\uF82C\\uF829\\uF828\\uF824\\uE1A2"'
execute if score @s SneakTime matches 13..18 run data modify storage player:ui skill_bar set value '"\\uF82C\\uF829\\uF828\\uF824\\uE1A3"'
execute if score @s SneakTime matches 19..24 run data modify storage player:ui skill_bar set value '"\\uF82C\\uF829\\uF828\\uF824\\uE1A4"'
execute if score @s SneakTime matches 25.. run data modify storage player:ui skill_bar set value '"\\uF82C\\uF829\\uF828\\uF824\\uE1A5"'