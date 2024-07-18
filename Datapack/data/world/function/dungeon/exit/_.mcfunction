#> world:dungeon/exit/_
# ダンジョン脱出処理

execute in overworld positioned as 83a-51-1-0-2 run tp @s ~ ~ ~ -90 0
execute in overworld positioned as 83a-51-1-0-2 run playsound block.beacon.power_select master @s ~ ~ ~ 0.2 1.1

# 実績達成チェック
    execute if entity @s[tag=3.4.NoDamage] run advancement grant @s only asset:achievement/3.4
    function world:dungeon/exit/timer
    tag @s remove 3.4.NoDamage