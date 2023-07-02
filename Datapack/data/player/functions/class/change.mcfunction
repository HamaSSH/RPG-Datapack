##########
#>
#

# 職業ステータスリセット
    scoreboard players reset @s ClassHPRegen
    scoreboard players reset @s ClassMPRegen
    scoreboard players reset @s ClassAD
    scoreboard players reset @s ClassAP
    scoreboard players reset @s ClassDEX
    scoreboard players reset @s ClassDEF
    scoreboard players reset @s ClassSPD
    scoreboard players reset @s ClassCRT
    scoreboard players reset @s ClassLUK
# パッシブスキル関連リセット
    attribute @s generic.knockback_resistance modifier remove 2-0-0-0-0
    attribute @s generic.knockback_resistance modifier remove 2-0-0-0-1
    attribute @s generic.knockback_resistance modifier remove 2-0-0-0-2
    attribute @s generic.knockback_resistance modifier remove 2-0-0-0-3
    attribute @s generic.knockback_resistance modifier remove 2-0-0-0-4
    scoreboard players set @s cdr 0