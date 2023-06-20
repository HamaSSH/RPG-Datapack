##########
#>
#

### 常時実行function

# 光を出す
    execute store result storage item:flash Time int 1 run scoreboard players get @s flash_timer
    execute if score @s flash_timer matches 1.. run function item:asset/1610/light/summon
    scoreboard players remove @s flash_timer 1
# 光源AECとして光源(light_block)を設置/撤去
    execute as @e[type=area_effect_cloud,tag=Light] at @s run function item:asset/1610/light/_
# リセット
    data remove storage item:flash Time