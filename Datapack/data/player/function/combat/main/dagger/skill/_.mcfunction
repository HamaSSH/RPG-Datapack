#> player:combat/main/dagger/skill/_
# 攻撃速度を早くする #TODO: 1.21のattribute

# execute if predicate player:hold_weapon/dagger run attribute @s generic.attack_speed modifier add dagger_skill 100 add_value
# execute unless predicate player:hold_weapon/dagger run attribute @s generic.attack_speed modifier remove dagger_skill
execute if predicate player:hold_weapon/dagger run attribute @s generic.attack_speed modifier add 83a-51-1-1-0 "DaggerSkill" 100 add_value
execute unless predicate player:hold_weapon/dagger run attribute @s generic.attack_speed modifier remove 83a-51-1-1-0