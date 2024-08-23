#> mob:on_hurt/element/thunder/_
# 雷チェイン攻撃

# 最大チェイン数の設定
    scoreboard players set $ThunderChainMax Temporary 2
    scoreboard players operation $ThunderChainMax Temporary += $ElementRank Temporary

# チェイン処理
    tag @s add ChainedTarget
    function mob:on_hurt/element/thunder/chain

# リセット
    scoreboard players reset $ThunderChainMax Temporary
    tag @e[tag=ChainTarget] remove ChainTarget
    tag @e[tag=ChainedTarget] remove ChainedTarget