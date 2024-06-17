#> player:combat/main/tick
# ため攻撃のtick処理

execute if entity @s[tag=DaggerSkill] run function player:combat/main/dagger/skill/tick
execute if entity @s[tag=SwordSkill] run function player:combat/main/sword/skill/tick
execute if entity @s[tag=SpearSkill] run function player:combat/main/spear/skill/tick
execute if entity @s[tag=HammerSkill] run function player:combat/main/hammer/skill/tick
execute if entity @s[tag=WandSkill] run function player:combat/main/wand/skill/tick