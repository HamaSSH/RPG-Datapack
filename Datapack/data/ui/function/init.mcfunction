#> ui:init
# 開かれたUIの初期化処理

# 初期playsound
    execute on passengers on passengers run tag @s add InitialSound

# プレイヤーとの結び付け
    execute on attacker run scoreboard players operation $UIPlayerID Temporary = @s PlayerID
    execute if score $UIPlayerID Temporary = @p[tag=OpenedUI] PlayerID positioned ~ ~-1.1 ~ run scoreboard players operation @s PlayerID = $UIPlayerID Temporary
    scoreboard players reset $UIPlayerID Temporary

# UIを閉じなくする
    execute if score @s PlayerID matches 1.. run tag @s remove AutoKill