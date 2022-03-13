# モブに攻撃したプレイヤーをタグ付け
    tag @s add this
# モブの絞り込み
    execute positioned ~ ~1.2 ~ if entity @e[type=magma_cube,tag=LeftClick,distance=..0,sort=nearest,limit=1] positioned ~ ~-1.2 ~ if entity @s[advancements={attack:player_attacked={projectile=false}}] run function attack:main/_
    execute as @e[type=#mob:mobs,tag=!HurtTime,nbt=!{HurtTime:0s},distance=..100] run function attack:player_attacked/8
# リセット
    tag @s remove this
    advancement revoke @s only attack:player_attacked