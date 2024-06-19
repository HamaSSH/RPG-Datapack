#> player:trigger/using_item/shears/_
# ツール「ハサミ」を使用中の処理

# 目の先のブロック検知
    execute if items entity @s weapon.* brush[can_place_on] anchored eyes positioned ^ ^ ^ run function player:trigger/using_item/shears/rec

# リセット
    execute if entity @s[advancements={player:trigger/using_item/shears=false}] run function player:trigger/using_item/shears/reset