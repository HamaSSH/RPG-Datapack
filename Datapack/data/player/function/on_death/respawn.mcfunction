#> player:on_death/respawn
# リスポーン時の処理

tag @s remove Respawn

# リスポーン
    execute in overworld positioned as 83a-51-1-0-2 run tp @s ~ ~ ~ -90 0

# バフの削除
    effect clear @a
    function player:buff/reset
    function player:magic/element/reset
    scoreboard players set @s SkillTimer 0

# 目の前真っ暗
    effect give @s darkness 3 0 true
    effect give @s blindness 3 0 true