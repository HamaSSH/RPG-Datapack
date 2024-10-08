#> player:magic/element/init
# 属性纏いスコア設定(+UI)とタグ付け

advancement grant @s only asset:tips/element

# 消費MPに応じたElementTimerの設定
    execute store result score $ElementDuration Temporary run data get storage player: mp_cost 15
    execute if score @s ElementFocus matches 1.. run function player:status/passive/element_focus/_
    scoreboard players operation @s ElementTimer = $ElementDuration Temporary

# バフの付与
    tag @s add IsBuffed
    data modify storage player: NewBuff set value [{amplifier:0}]
    data modify storage player: NewBuff[0].element set from storage player: magic.element
    execute store result storage player: NewBuff[0].duration int 1 run scoreboard players get $ElementDuration Temporary
    function player:buff/_

# タグ付け
    execute if data storage player: magic{element:"fire"} run tag @s add ElementFire
    execute if data storage player: magic{element:"water"} run tag @s add ElementWater
    execute if data storage player: magic{element:"thunder"} run tag @s add ElementThunder
    execute if data storage player: magic{element:"earth"} run tag @s add ElementEarth
    execute if data storage player: magic{element:"wind"} run tag @s add ElementWind

# リセット
    scoreboard players reset $ElementFocus Temporary
    scoreboard players reset $ElementDuration Temporary