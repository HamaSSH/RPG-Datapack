# HP表示用ArmorStand ~0.5 ~0.8 ~0.5 markerエンティティを置いておく
    summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["Init","CoalOre"],Invulnerable:1b,Marker:1b,CustomName:'[{"text":"█████","color":"green"}]'}
# 初期処理
    execute as @e[type=armor_stand,tag=Init,tag=CoalOre,distance=..0.01,sort=nearest,limit=1] run function item:collect/coal_ore/init