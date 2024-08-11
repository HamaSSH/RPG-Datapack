#> player:trigger/pickup_bottle
# ガラス瓶/水入りの瓶を取得した瞬間clear

clear @s glass_bottle
clear @s potion[potion_contents={potion:"water"}]
advancement revoke @s only player:trigger/pickup_bottle