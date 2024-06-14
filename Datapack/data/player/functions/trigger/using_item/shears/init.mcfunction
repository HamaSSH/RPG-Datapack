#> player:trigger/using_item/shears/init
# 右クリック中なのに使用判定が出ない時があるのでタグ付けで使用判定

execute if items entity @s weapon.mainhand brush[damage~{durability:{min:1}}] run tag @s add MainhandShears
execute unless entity @s[tag=MainhandShears] if items entity @s weapon.offhand brush[damage~{durability:{min:1}}] run tag @s add OffhandShears
execute unless entity @s[tag=!MainhandShears,tag=!OffhandShears] run tag @s add UsingShears