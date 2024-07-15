#> mob:on_hurt/element/thunder/chain
# 雷チェイン処理

# チェイン先を探す
    execute as @n[type=#lib:every_mob,tag=Enemy,tag=Controller,tag=!ChainedTarget,sort=nearest,distance=..3] run tag @s add ChainTarget

# チェイン先タグのついたモブに対して雷を伸ばす
    execute if entity @n[type=#lib:every_mob,tag=ChainTarget] facing entity @n[type=#lib:every_mob,tag=ChainTarget] feet run function mob:on_hurt/element/thunder/find_target