#> mob:on_hurt/element/fire/_
# 炎デバフ

scoreboard players operation $FireDuration Temporary = $ElementRank Temporary
scoreboard players operation $FireDuration Temporary *= #20 Constant
execute store result storage mob: element.fire short 1 run scoreboard players add $FireDuration Temporary 40
function mob:on_hurt/element/fire/apply with storage mob: element

# リセット
    scoreboard players reset $FireDuration Temporary
    data remove storage mob: element