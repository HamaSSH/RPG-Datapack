# MP、CD条件が通れば魔法発動
    function player:status/cd/check/_
    execute if entity @s[tag=CDCheck] run function player:status/mp/check/_
    execute if entity @s[tag=CDCheck,tag=MPCheck] run function magic:asset/5402.homing_earth/_
# リセット
    scoreboard players reset $MPCost