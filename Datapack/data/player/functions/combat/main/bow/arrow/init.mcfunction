#> player:combat/main/bow/arrow/init
# 矢の初期データ設定

data modify entity @s PierceLevel set value 1
data modify entity @s pickup set value 0b
data modify entity @s SoundEvent set value "entity.player.attack.crit"
tag @s add Flying

# 自動的に消滅させる
    scoreboard players set @s Timer 20
    tag @s add AutoKill