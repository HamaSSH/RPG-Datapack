#> asset:magic/5103.flame_pillar/tick/pillar/origin
# フレイムピラーの基準アマスタとしての処理

# フレイムピラーの召喚
    execute if score @s Timer matches 3 align y positioned ^ ^-3 ^ run function asset:magic/5103.flame_pillar/tick/pillar/summon/check
    execute if score @s Timer matches 6 align y positioned ^ ^-3 ^2 run function asset:magic/5103.flame_pillar/tick/pillar/summon/check
    execute if score @s Timer matches 9 align y positioned ^ ^-3 ^4 run function asset:magic/5103.flame_pillar/tick/pillar/summon/check
    execute if score @s Timer matches 12 align y positioned ^ ^-3 ^6 run function asset:magic/5103.flame_pillar/tick/pillar/summon/check
    execute if score @s Timer matches 15 align y positioned ^ ^-3 ^8 run function asset:magic/5103.flame_pillar/tick/pillar/summon/check
    execute if score @s Timer matches 15 run kill @s