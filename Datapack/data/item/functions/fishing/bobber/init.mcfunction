#> item:fishing/bobber/init
# 釣り竿のウキの初期化

tag @s add BobberInit
execute on origin run tag @s add Fisher

# ウキ用のアイテムにひっかける
    summon item ~ ~-0.3 ~ {PickupDelay:32767s,Invulnerable:1b,Item:{id:"nautilus_shell",Count:1b,tag:{ItemType:"FishingBobber"}}}
    execute positioned ~ ~-0.3 ~ as @e[type=item,distance=..0] run data modify entity @s Thrower set from entity @p[tag=Fisher] UUID
    execute positioned ~ ~-0.3 ~ run ride @s mount @e[type=item,distance=..0,sort=nearest,limit=1]

# ウキ用のアイテムのPlayerID設定
    # execute positioned ~ ~-0.3 ~ run scoreboard players operation @e[type=item,distance=..0,sort=nearest,limit=1] PlayerID = @s PlayerID

# リセット
    tag @a remove Fisher