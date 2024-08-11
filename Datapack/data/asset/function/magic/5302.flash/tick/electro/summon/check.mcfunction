#> asset:magic/5302.flash/tick/electro/summon/check
# ビリビリの召喚チェック

execute summon armor_stand run function asset:magic/5302.flash/tick/electro/summon/init
execute if entity @s[distance=..7] positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:magic/5302.flash/tick/electro/summon/check