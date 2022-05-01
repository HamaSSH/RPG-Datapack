# AttributeModifierリセット
    attribute @s minecraft:generic.knockback_resistance modifier remove 2-0-0-0-0
    attribute @s minecraft:generic.knockback_resistance modifier remove 2-0-0-0-1
    attribute @s minecraft:generic.knockback_resistance modifier remove 2-0-0-0-2
    attribute @s minecraft:generic.knockback_resistance modifier remove 2-0-0-0-3
    attribute @s minecraft:generic.knockback_resistance modifier remove 2-0-0-0-4
# パッシブスキル「強靭な体」-ノックバック耐性
    execute if score @s skill_level matches 1 run attribute @s generic.knockback_resistance modifier add 2-0-0-0-0 "KnockbackResistance0" 0.05 add
    execute if score @s skill_level matches 2 run attribute @s generic.knockback_resistance modifier add 2-0-0-0-1 "KnockbackResistance1" 0.15 add
    execute if score @s skill_level matches 3 run attribute @s generic.knockback_resistance modifier add 2-0-0-0-2 "KnockbackResistance2" 0.3 add
    execute if score @s skill_level matches 4 run attribute @s generic.knockback_resistance modifier add 2-0-0-0-3 "KnockbackResistance3" 0.6 add
    execute if score @s skill_level matches 5 run attribute @s generic.knockback_resistance modifier add 2-0-0-0-4 "KnockbackResistance4" 1.0 add