##########
#>
#

# HP表示用ArmorStand ~0.5 ~0.8 ~0.5 markerエンティティを置いておく
    execute as @e[type=marker,tag=CollectMarker,distance=..10,sort=nearest,limit=1] at @s if block ~ ~ ~ #item:air run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["CollectInit","SweetBerry"],Invulnerable:1b,Marker:1b,CustomName:'[{"text":"█████","color":"green"}]'}
# 初期処理
    execute as @e[type=marker,tag=CollectMarker,distance=..10,sort=nearest,limit=1] at @s as @e[type=armor_stand,tag=CollectInit,tag=SweetBerry,distance=..0.01,sort=nearest,limit=1] run function item:shears/sweet_berries/init