#> player:menu/clicked/2/update_status
# プレイヤーステータスLoreの更新

tag @s remove MenuStatusUpdate

# 自然回復力
    scoreboard players operation $HPRegenInt Temporary = @s HPRegen
    scoreboard players operation $HPRegenInt Temporary /= #100 Constant
    scoreboard players operation $HPRegenDec Temporary = @s HPRegen
    scoreboard players operation $HPRegenDec Temporary %= #100 Constant
    scoreboard players operation $MPRegenInt Temporary = @s MPRegen
    scoreboard players operation $MPRegenInt Temporary /= #100 Constant
    scoreboard players operation $MPRegenDec Temporary = @s MPRegen
    scoreboard players operation $MPRegenDec Temporary %= #100 Constant
    execute if score $HPRegenInt Temporary matches 1.. if score $HPRegenDec Temporary matches 1..9 run scoreboard players set $HPRegenDec10 Temporary 0
    execute if score $MPRegenInt Temporary matches 1.. if score $MPRegenDec Temporary matches 1..9 run scoreboard players set $MPRegenDec10 Temporary 0

# プレイヤーメニューのLore編集
    item modify entity @s player.crafting.2 player:menu/status

# リセット
    scoreboard players reset $HPRegenInt Temporary
    scoreboard players reset $HPRegenDec Temporary
    scoreboard players reset $HPRegenDec10 Temporary
    scoreboard players reset $MPRegenInt Temporary
    scoreboard players reset $MPRegenDec Temporary
    scoreboard players reset $MPRegenDec10 Temporary