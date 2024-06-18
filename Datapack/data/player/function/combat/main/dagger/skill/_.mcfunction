#> player:combat/main/dagger/skill/_
# 攻撃速度を早くする

execute if predicate player:hold_weapon/dagger run attribute @s generic.attack_speed modifier add dagger_skill 100 add_value
execute unless predicate player:hold_weapon/dagger run attribute @s generic.attack_speed modifier remove dagger_skill