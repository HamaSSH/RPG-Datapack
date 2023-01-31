##########
#>
#

### 魔法関連の#tick

# 魔法弾の#tick
    execute store result storage magic:asset id int 1 run scoreboard players get @s MagicID
    function #magic:tick
# 時間経過でkill
    execute as @e[type=armor_stand,tag=Magic] if data entity @s {PortalCooldown:0} run kill @s
# リセット
    data remove storage magic:asset id