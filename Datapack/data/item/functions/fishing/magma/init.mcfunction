#> item:fishing/magma/init
# 溶岩で釣りをするときのウキの初期処理

tag @s add FishingBobber

# ウキ用のアイテムにひっかける
    summon item ~ ~-0.3 ~ {PickupDelay:32767s,Invulnerable:1b,Item:{id:"nautilus_shell",Count:1b,tag:{CustomModelData:1,MagmaBobber:1b}}}
    execute positioned ~ ~-0.3 ~ run ride @s mount @e[type=item,distance=..0,sort=nearest,limit=1]

# ウキ用のアイテムのPlayerID設定
    execute positioned ~ ~-0.3 ~ run scoreboard players operation @e[type=item,distance=..0,sort=nearest,limit=1] PlayerID = @s PlayerID