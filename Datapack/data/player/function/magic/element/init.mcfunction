#> player:magic/element/init
# 属性纏いスコア設定(+UI)とタグ付け

# 消費MPに応じたElementTimerの設定
    execute store result score @s ElementTimer run data get storage player: mp_cost 10

# タグ付け
    execute if data storage player: magic{element:"fire"} run tag @s add ElementFire
    execute if data storage player: magic{element:"water"} run tag @s add ElementWater
    execute if data storage player: magic{element:"thunder"} run tag @s add ElementThunder
    execute if data storage player: magic{element:"earth"} run tag @s add ElementEarth
    execute if data storage player: magic{element:"wind"} run tag @s add ElementWind