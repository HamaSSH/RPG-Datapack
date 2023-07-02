##########
#>
#

# HP表示用ArmorStand ~0.5 ~0.8 ~0.5 markerエンティティを置いておく
    execute as @e[type=marker,tag=CollectMarker,distance=..10,sort=nearest,limit=1] at @s if block ~ ~ ~ #item:air run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["CollectInit","IronOre"],Invulnerable:1b,Marker:1b,CustomName:'[{"text":"█████","color":"green"}]'}
# 初期処理
    execute as @e[type=marker,tag=CollectMarker,distance=..10,sort=nearest,limit=1] at @s as @e[type=armor_stand,tag=CollectInit,tag=IronOre,distance=..0.01,sort=nearest,limit=1] run function item:collect/iron_ore/init