#> player:status/passive/attack_speed/_
# 攻撃速度

# マクロでAS → attack_speed
    execute store result storage player: passive.value float 0.001 run scoreboard players get @s AS
    attribute @s attack_speed modifier remove bonus_as
    function player:status/passive/attack_speed/apply with storage player: passive

# スコアに変化がある時だけfunctionを実行
    scoreboard players operation @s PreviousAS = @s AS

# リセット
    data remove storage player: passive