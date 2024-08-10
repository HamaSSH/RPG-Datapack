#> asset:magic/5103.flame_pillar/tick/pillar/origin
# フレイムピラーの基準アマスタとしての処理

# フレイムピラーの召喚
    execute if score @s 5103.Tick matches 3 align y positioned ^ ^-3 ^1 run function asset:magic/5103.flame_pillar/tick/pillar/summon/check
    execute if score @s 5103.Tick matches 6 align y positioned ^ ^-3 ^3 run function asset:magic/5103.flame_pillar/tick/pillar/summon/check
    execute if score @s 5103.Tick matches 9 align y positioned ^ ^-3 ^5 run function asset:magic/5103.flame_pillar/tick/pillar/summon/check
    execute if score @s 5103.Tick matches 12 align y positioned ^ ^-3 ^7 run function asset:magic/5103.flame_pillar/tick/pillar/summon/check
    execute if score @s 5103.Tick matches 12 run kill @s