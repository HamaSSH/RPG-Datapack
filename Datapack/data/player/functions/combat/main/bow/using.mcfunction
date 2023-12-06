#> player:combat/main/bow/using
# 弓使用中の処理

# 弓を引いている時間を記録
    scoreboard players add @s UsingBow 1

# リセット
    advancement revoke @s only player:combat/bow/using