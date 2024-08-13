#> player:class/passive_tellraw
# レベルアップ時パッシブスキルのtellraw

tellraw @s {"nbt":"passive_ui[0]","storage":"player:","interpret":true}

# 中身が無くなるまで再帰
    data remove storage player: passive_ui[0]
    execute unless data storage player: passive_ui[0] run data remove storage player: passive_ui
    execute if data storage player: passive_ui[0] run function player:class/passive_tellraw