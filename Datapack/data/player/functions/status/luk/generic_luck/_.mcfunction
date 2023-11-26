#> player:status/luk/generic_luck/_
# スコアに基づくプレイヤーの幸運値の設定

# マクロでLUK → generic_luck
    execute store result storage player: luk int 1 run scoreboard players get @s LUK
    function player:status/luk/generic_luck/apply with storage player:

# スコアに変化がある時だけfunctionを実行
    scoreboard players operation @s PreviousLUK = @s LUK

# リセット
    data remove storage player: luk