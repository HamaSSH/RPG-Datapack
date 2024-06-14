#> player:trigger/using_item/shears/reset
# ハサミの使用を終えた際のリセット処理

tag @s remove UsingShears
tag @s remove MainhandShears
tag @s remove OffhandShears
scoreboard players reset @s UsingShears