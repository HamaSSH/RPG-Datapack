##########
#>
#

### 魔法関連の#tick

# 魔法のデータの取得
    execute store result storage asset:magic id int 1 run scoreboard players get @s MagicID
    scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
    scoreboard players operation $PlayerID Temporary = @s PlayerID
# 魔法弾の#tick
    tp @s ^ ^ ^1
    function #asset:magic/tick
# ヒットチェック
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,dx=0,sort=nearest,limit=1] run tag @s add Hit
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:every_mob,tag=Enemy,tag=Hit,dx=0,limit=1] run data modify entity @s Age set value 20
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,dx=0,sort=nearest,limit=1] run function #asset:magic/hit
# 時間経過でkill
    execute as @e[type=armor_stand,tag=Magic] if data entity @s {PortalCooldown:0} run kill @s

# リセット
    data remove storage asset:magic id