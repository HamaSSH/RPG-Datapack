# モブに攻撃したプレイヤーをタグ付け
  tag @s add this
# モブの絞り込み
  execute as @e[type=#mob:mobs,nbt=!{HurtTime:0s},distance=..100] run function attack:player_attacked/8
  execute positioned ~ ~1.16 ~ if entity @e[type=magma_cube,tag=LeftClick,distance=..0,sort=nearest,limit=1] positioned ~ ~-1.16 ~ run function attack:left_click/_
# リセット
  tag @s remove this
  advancement revoke @s only attack:player_attacked