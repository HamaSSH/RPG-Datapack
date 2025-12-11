#> player:actionbar/_
# プレイヤーのアクションバーUI

# 数値のあるUI
    data modify storage player:temp hp set value ["",{"text":"\uE100","shadow_color":0},{"score":{"name":"@s","objective":"HP"}},"/",{"score":{"name":"@s","objective":"MaxHP"}}]
    data modify storage player:temp lvl set value [{"text":"","color":"#E0E0E0"},"Lv.\uF822",{"score":{"name":"@s","objective":"LVL"},"color":"white","bold":true},"\uF822(",{"score":{"name":"@s","objective":"EXP"},"color":"#9EE082"},"/",{"score":{"name":"@s","objective":"NextEXP"}},") "]
    data modify storage player:temp gold set value ["",{"score":{"name":"@s","objective":"Gold"}},{"text":"G","color":"#FFEE59"},"\uF822",{"text":"\uE101","shadow_color":0}]
# HPバー
    scoreboard players operation $MaxHP Temporary = @s MaxHP
    scoreboard players operation $MaxHP Temporary /= #5 Constant
    execute store result storage macro:temp hp_bar.value int 1 run scoreboard players add $MaxHP Temporary 10
    function player:actionbar/hp_bar with storage macro:temp hp_bar
# スキルバー
    scoreboard players operation $SkillTimer Temporary = @s SkillTimer
    scoreboard players operation $SkillTimer Temporary /= #20 Constant
    scoreboard players add $SkillTimer Temporary 10
    execute if entity @s run scoreboard players add $SkillTimer Temporary 40
    execute store result storage macro:temp skill_bar.value int 1 run scoreboard players get $SkillTimer Temporary
    function player:actionbar/skill_bar with storage macro:temp skill_bar
# TODO: 職業用アイコン
    execute store result storage macro:temp skill_icon.max_shield int 1 run scoreboard players get @s MaxPShield
    execute store result storage macro:temp skill_icon.shield int 1 run scoreboard players get @s PShield
    function player:actionbar/shield with storage macro:temp skill_icon
    # execute store result storage macro:temp skill_icon.max_arrow int 1 run scoreboard players get @s MaxHArrow
    # execute store result storage macro:temp skill_icon.arrow int 1 run scoreboard players get @s HArrow
    # function player:actionbar/arrow with storage macro:temp skill_icon
# 酸素ゲージ
    data modify storage player:temp oxygen set value {"text":"\uE60A"}
    scoreboard players operation $OxygenRatio Temporary = @s Oxygen
    scoreboard players operation $OxygenRatio Temporary *= #100 Constant
    scoreboard players operation $OxygenRatio Temporary /= @s MaxOxygen
    execute if score $OxygenRatio Temporary matches 1 run data modify storage player:temp oxygen set value {"text":"\uE60B","shadow_color":0}
    execute if score $OxygenRatio Temporary matches 21 run data modify storage player:temp oxygen set value {"text":"\uE60C","shadow_color":0}
    execute if score $OxygenRatio Temporary matches 41 run data modify storage player:temp oxygen set value {"text":"\uE60D","shadow_color":0}
    execute if score $OxygenRatio Temporary matches 61 run data modify storage player:temp oxygen set value {"text":"\uE60E","shadow_color":0}
    execute if score $OxygenRatio Temporary matches 81 run data modify storage player:temp oxygen set value {"text":"\uE60F","shadow_color":0}
    scoreboard players add $OxygenRatio Temporary 19
    scoreboard players operation $OxygenRatio Temporary /= #20 Constant
    execute store result storage macro:temp oxygen.value int 1 run scoreboard players get $OxygenRatio Temporary
    execute unless score @s Oxygen = @s MaxOxygen run function player:actionbar/oxygen with storage macro:temp oxygen

# 1. HPの表示
    # title @s actionbar ["",{"text":"\uE100","shadow_color":0},{"score":{"name":"@s","objective":"HP"}},"/",{"score":{"name":"@s","objective":"MaxHP"}}]

# 2. storageに入れる
    # title @s actionbar ["",{"nbt":"hp","storage":"player:temp","interpret":true}]

# 3. 右揃え
    # title @s actionbar ["","\uF82F",{"nbt":"hp","storage":"player:temp","interpret":true},"\uF82F",{"nbt":"hp","storage":"player:temp","interpret":true}]

# 4. LVL,Goldの表示
    # title @s actionbar ["",{"nbt":"lvl","storage":"player:temp","interpret":true},{"nbt":"gold","storage":"player:temp","interpret":true},"\uF82F",{"nbt":"hp","storage":"player:temp","interpret":true},{"nbt":"lvl","storage":"player:temp","interpret":true},{"nbt":"gold","storage":"player:temp","interpret":true},"\uF82F",{"nbt":"hp","storage":"player:temp","interpret":true}]

# 5. HPバーの表示
    # title @s actionbar ["",{"nbt":"lvl","storage":"player:temp","interpret":true},{"nbt":"gold","storage":"player:temp","interpret":true},"\uF82F",{"nbt":"hp","storage":"player:temp","interpret":true},{"nbt":"hp_bar","storage":"player:temp","interpret":true},{"nbt":"lvl","storage":"player:temp","interpret":true},{"nbt":"gold","storage":"player:temp","interpret":true},"\uF82F",{"nbt":"hp","storage":"player:temp","interpret":true}]

# 6. スキルバーの表示
    # title @s actionbar ["",{"nbt":"lvl","storage":"player:temp","interpret":true},{"nbt":"gold","storage":"player:temp","interpret":true},"\uF82F",{"nbt":"hp","storage":"player:temp","interpret":true},{"nbt":"hp_bar","storage":"player:temp","interpret":true},{"nbt":"skill_bar","storage":"player:temp","interpret":true},{"nbt":"lvl","storage":"player:temp","interpret":true},{"nbt":"gold","storage":"player:temp","interpret":true},"\uF82F",{"nbt":"hp","storage":"player:temp","interpret":true}]

# 7. 職業スキル用アイコン
    title @s actionbar ["",{"nbt":"lvl","storage":"player:temp","interpret":true},{"nbt":"gold","storage":"player:temp","interpret":true},"\uF82F",{"nbt":"hp","storage":"player:temp","interpret":true},{"nbt":"hp_bar","storage":"player:temp","interpret":true},{"nbt":"skill_icon","storage":"player:temp","interpret":true},{"nbt":"skill_bar","storage":"player:temp","interpret":true},{"nbt":"lvl","storage":"player:temp","interpret":true},{"nbt":"gold","storage":"player:temp","interpret":true},"\uF82F",{"nbt":"hp","storage":"player:temp","interpret":true}]

# 8. 酸素ゲージ
    title @s actionbar ["",{"nbt":"lvl","storage":"player:temp","interpret":true},{"nbt":"gold","storage":"player:temp","interpret":true},"\uF82F",{"nbt":"hp","storage":"player:temp","interpret":true},{"nbt":"hp_bar","storage":"player:temp","interpret":true},{"nbt":"skill_icon","storage":"player:temp","interpret":true},{"nbt":"skill_bar","storage":"player:temp","interpret":true},{"nbt":"oxygen","storage":"player:temp","interpret":true},{"nbt":"lvl","storage":"player:temp","interpret":true},{"nbt":"gold","storage":"player:temp","interpret":true},"\uF82F",{"nbt":"hp","storage":"player:temp","interpret":true}]

# 9. バフ用アイコン

# 10.縦合わせ
    # data modify storage player:temp hp set value [{"text":"","font":"y-22px"},{"text":"\uE100","shadow_color":0},{"score":{"name":"@s","objective":"HP"}},"/",{"score":{"name":"@s","objective":"MaxHP"}}]
    # data modify storage player:temp lvl set value [{"text":"","color":"#E0E0E0","font":"y-16px"},"Lv.\uF822",{"score":{"name":"@s","objective":"LVL"},"color":"white","bold":true},"\uF822(",{"score":{"name":"@s","objective":"EXP"},"color":"#9EE082"},"/",{"score":{"name":"@s","objective":"NextEXP"}},") "]
    # data modify storage player:temp gold set value [{"text":"","font":"y-16px"},{"score":{"name":"@s","objective":"Gold"}},{"text":"G","color":"#FFEE59"},"\uF822",{"text":"\uE101","shadow_color":0}]

# 11. 横合わせ
    # title @s actionbar ["",{"nbt":"lvl","storage":"player:temp","interpret":true},{"nbt":"gold","storage":"player:temp","interpret":true},"\uF82F","\uF80B\uF828\uF823",{"nbt":"hp","storage":"player:temp","interpret":true},{"nbt":"hp_bar","storage":"player:temp","interpret":true},{"nbt":"skill_icon","storage":"player:temp","interpret":true},{"nbt":"skill_bar","storage":"player:temp","interpret":true},{"nbt":"lvl","storage":"player:temp","interpret":true},{"nbt":"gold","storage":"player:temp","interpret":true},"\uF82F",{"nbt":"hp","storage":"player:temp","interpret":true}]


# リセット
    data remove storage player:temp hp
    data remove storage player:temp lvl
    data remove storage player:temp gold
    data remove storage player:temp hp_bar
    data remove storage player:temp skill_icon
    data remove storage player:temp skill_bar
    data remove storage player:temp oxygen
    scoreboard players reset $MaxHP Temporary
    data remove storage macro:temp hp_bar
    scoreboard players reset $SkillTimer Temporary
    data remove storage macro:temp skill_bar
    data remove storage macro:temp skill_icon
    scoreboard players reset $OxygenRatio Temporary
    data remove storage macro:temp oxygen