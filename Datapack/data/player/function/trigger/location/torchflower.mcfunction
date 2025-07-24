#> player:trigger/location/torchflower
# トーチフラワーに乗った際の処理

# 炎上エフェクト
    damage @s 1.0 on_fire
    execute if data entity @s {HurtTime:10s} run particle flame ~ ~ ~ 0.2 0.1 0.2 0.04 15 force
    summon magma_cube ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["AutoKill","Timer"],HandItems:[{id:"stick",count:1,components:{"enchantments":{levels:{"fire_aspect":1}}}},{}],attributes:[{id:"attack_damage",base:0.01},{id:"attack_knockback",base:0},{id:"scale",base:0}]}

# リセット
    advancement revoke @s only player:trigger/location/torchflower