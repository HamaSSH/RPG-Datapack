#> player:status/agi/_
# 素早さに変更があった場合にattributeの更新

# movement_speed
    function player:status/agi/movement_speed/_

# movement_efficiency
    function player:status/agi/movement_efficiency/_

# スコアに変化がある時だけfunctionを実行
    scoreboard players operation @s PreviousAGI = @s AGI