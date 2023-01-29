# MPコスト
    scoreboard players set $MPCost Temporary 30
    function player:status/mp/check/_
    execute if entity @s[tag=MPCheck] run function combat:main/wand/skill/init
# リセット
    tag @s remove MPCheck
    scoreboard players reset $MPCost