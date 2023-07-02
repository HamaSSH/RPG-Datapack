##########
#>
#

# 光源を置く用のAECを召喚
    execute anchored eyes positioned ^ ^ ^ align xyz if block ~ ~ ~ #lib:air run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["Light"]}
    execute anchored eyes positioned ^ ^ ^ align xyz if block ~ ~ ~ light[waterlogged=false] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["Light"]}
    execute anchored eyes positioned ^ ^ ^ align xyz if block ~ ~ ~ water run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["Light","InWater"]}
    execute anchored eyes positioned ^ ^ ^ align xyz if block ~ ~ ~ light[waterlogged=true] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["Light","InWater"]}
# 光源の強さのデータ
    execute anchored eyes positioned ^ ^ ^ align xyz as @e[type=area_effect_cloud,distance=..0.01] run data modify entity @s PortalCooldown set from storage item:flash Time
# 再帰
    execute if entity @s[distance=..5] positioned ^ ^ ^1 run function item:asset/1610/light/summon