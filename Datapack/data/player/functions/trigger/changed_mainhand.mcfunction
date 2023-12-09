#> player:trigger/changed_mainhand
# 手に盛ったアイテム(武器)を変更した際の処理

# ため攻撃のチャージリセット
    scoreboard players reset @s SneakTime

# 選択中の武器のUUIDの保存
    scoreboard players operation @s PreviousItemUUID = @s ItemUUID
