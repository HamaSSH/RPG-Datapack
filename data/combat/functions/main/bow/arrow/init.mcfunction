# 弓矢と放ったプレイヤーの紐づけ
    scoreboard players operation @s PlayerID = @a[tag=this,limit=1] PlayerID
    scoreboard players operation @s dmg_dealt = @a[tag=this,limit=1] dex
    data modify entity @s Owner set from entity @a[tag=this,limit=1] UUID
    data modify entity @s damage set value 4.0d
# 属性初期処理
    function combat:main/bow/init
# プレイヤーの目元にtp
    tp ~ ~-98.36 ~
# 矢を飛ばす
    data modify entity @s Motion set from entity @e[type=area_effect_cloud,tag=Knockback,sort=nearest,limit=1] Pos
    data modify entity @s Rotation set from entity @a[tag=this,limit=1] Rotation
    kill @e[type=area_effect_cloud,tag=Knockback,sort=nearest,limit=1]
# リセット
    tag @s remove ArrowInit