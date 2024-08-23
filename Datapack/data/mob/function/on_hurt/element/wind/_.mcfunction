#> mob:on_hurt/element/wind/_
# 風デバフ(ギリ落下ダメージあるくらいの吹き飛ばし)

scoreboard players operation $WindMotion Temporary = $ElementRank Temporary
scoreboard players operation $WindMotion Temporary *= #20 Constant
execute store result storage mob: element.wind double 0.01 run scoreboard players add $WindMotion Temporary 80
function mob:on_hurt/element/wind/apply with storage mob: element

# 演出
    particle dust_color_transition{from_color:[0.812,1.0,0.686],to_color:[0.573,1.0,0.173],scale:1} ~ ~0.2 ~ 0.3 0.2 0.3 1 15 force
    particle sweep_attack ~ ~0.1 ~ 0 0 0 0.01 2 force
    playsound entity.goat.screaming.long_jump master @a ~ ~ ~ 0.6 1.5
    playsound resource:custom.weapon.sword master @a ~ ~ ~ 0.2 1.6

# リセット
    scoreboard players reset $WindMotion Temporary
    data remove storage mob: element