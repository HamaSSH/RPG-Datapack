#> player:magic/element/init
# 属性纏いスコア設定(+UI)とタグ付け

# 消費MPに応じたElementTimerの設定
    execute store result score @s ElementTimer run data get storage player: mp_cost 10
    data modify storage player: NewBuff set value [{amplifier:0}]
    data modify storage player: NewBuff[0].element set from storage player: magic.element
    execute store result storage player: NewBuff[0].duration int 1 run data get storage player: mp_cost 10
    function player:buff/_

# タグ付け
    execute if data storage player: magic{element:"fire"} run tag @s add ElementFire
    execute if data storage player: magic{element:"water"} run tag @s add ElementWater
    execute if data storage player: magic{element:"thunder"} run tag @s add ElementThunder
    execute if data storage player: magic{element:"earth"} run tag @s add ElementEarth
    execute if data storage player: magic{element:"wind"} run tag @s add ElementWind