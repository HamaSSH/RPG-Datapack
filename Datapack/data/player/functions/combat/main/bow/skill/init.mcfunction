#> player:combat/main/bow/skill/init
# ため攻撃の初期処理

# 放った時のプレイヤーの角度取得
    execute store result score $Angle Temporary run data get entity @s Rotation[1]

# 十分なMPを持っているか検知
    data modify storage player: MPCost set value 20
    function player:status/mp/check/_

# 十分なMPを持っていればため攻撃
    execute if entity @s[tag=MPCheckPass] unless score $Angle Temporary matches -90..-60 run say shot!
    execute if entity @s[tag=MPCheckPass] if score $Angle Temporary matches -90..-60 run say meteor!

# リセット
    scoreboard players reset $Angle Temporary
    data remove storage player: MPCost