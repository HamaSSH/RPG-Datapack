# モブに攻撃したプレイヤーをタグ付け
    tag @s add this
# モブの絞り込み
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.8 ~ if entity @e[type=panda,tag=LeftClick,distance=..0,sort=nearest,limit=1] at @s if entity @s[advancements={attack:player_attacked={projectile=false}}] run function attack:main/_
    execute as @e[type=#mob:mobs,tag=!HurtTime,nbt=!{HurtTime:0s},distance=..100] run function attack:player_attacked/8
    execute if entity @s[advancements={attack:player_attacked={flash=true}}] run function item:asset/1610/left_click
# リセット
    tag @s remove this
    advancement revoke @s only attack:player_attacked