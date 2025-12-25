#> player:actionbar/_
# プレイヤーのアクションバーUI

# 動的な値のあるUI群
    data modify storage player:temp hp set value [{"text":"","font":"y-22px"},{"text":"\uE100","shadow_color":0},"\uF822",{"score":{"name":"@s","objective":"HP"}},"/",{"score":{"name":"@s","objective":"MaxHP"}}]
    data modify storage player:temp lvl set value [{"text":"","color":"#E0E0E0","font":"y-16px"},"Lv.\uF822",{"score":{"name":"@s","objective":"LVL"},"color":"white","bold":true},"\uF822(",{"score":{"name":"@s","objective":"EXP"},"color":"#9EE082"},"/",{"score":{"name":"@s","objective":"NextEXP"}},") "]
    data modify storage player:temp gold set value [{"text":"","font":"y-16px"},{"score":{"name":"@s","objective":"Gold"}},{"text":"G","color":"#FFEE59"},"\uF822",{"text":"\uE101","shadow_color":0}]

# HPバー
    # HPの割合計算
        scoreboard players operation $MaxHP Temporary = @s MaxHP
        scoreboard players operation $MaxHP Temporary /= #5 Constant
        execute store result storage macro:temp hp_bar.value int 1 run scoreboard players add $MaxHP Temporary 10
    # 適用
        function player:actionbar/hp_bar.m with storage macro:temp hp_bar

# スキルバー
    # スキルクールダウンの割合計算
        scoreboard players operation $SkillTimer Temporary = @s SkillTimer
        scoreboard players operation $SkillTimer Temporary /= #20 Constant
        scoreboard players add $SkillTimer Temporary 10
        execute if entity @s run scoreboard players add $SkillTimer Temporary 40
        execute store result storage macro:temp skill_bar.value int 1 run scoreboard players get $SkillTimer Temporary
    # 適用
        function player:actionbar/skill_bar.m with storage macro:temp skill_bar

# 職業用アイコン
    data modify storage player:temp skill_icon set value "\uE400"
    execute if predicate player:class/is_paladin run function player:actionbar/paladin/_
    execute if predicate player:class/is_hunter run function player:actionbar/hunter/_

# 酸素ゲージ
    data modify storage player:temp oxygen set value "\uE60A"
    # 酸素ゲージの割合を計算
        scoreboard players operation $OxygenRatio Temporary = @s Oxygen
        scoreboard players operation $OxygenRatio Temporary *= #100 Constant
        scoreboard players operation $OxygenRatio Temporary /= @s MaxOxygen
    # 気泡が破裂するアイコン
        execute if entity @s[tag=Underwater] if score $OxygenRatio Temporary matches 1 run data modify storage player:temp oxygen set value {"text":"\uE60B","shadow_color":0}
        execute if entity @s[tag=Underwater] if score $OxygenRatio Temporary matches 21 run data modify storage player:temp oxygen set value {"text":"\uE60C","shadow_color":0}
        execute if entity @s[tag=Underwater] if score $OxygenRatio Temporary matches 41 run data modify storage player:temp oxygen set value {"text":"\uE60D","shadow_color":0}
        execute if entity @s[tag=Underwater] if score $OxygenRatio Temporary matches 61 run data modify storage player:temp oxygen set value {"text":"\uE60E","shadow_color":0}
        execute if entity @s[tag=Underwater] if score $OxygenRatio Temporary matches 81 run data modify storage player:temp oxygen set value {"text":"\uE60F","shadow_color":0}
    # 割合に応じて気泡アイコンを表示
        scoreboard players add $OxygenRatio Temporary 19
        scoreboard players operation $OxygenRatio Temporary /= #20 Constant
        execute store result storage macro:temp oxygen.value int 1 run scoreboard players get $OxygenRatio Temporary
    # 酸素ゲージが満タンの時は非表示
        execute unless score @s Oxygen = @s MaxOxygen run function player:actionbar/oxygen.m with storage macro:temp oxygen

# UIの表示
   title @s actionbar ["",\
   {"nbt":"lvl","storage":"player:temp","interpret":true},\
   {"nbt":"gold","storage":"player:temp","interpret":true},\
   "\uF82F",{"translate":"space.-79"},\
   {"nbt":"hp","storage":"player:temp","interpret":true},{"translate":"space.6"},\
   {"nbt":"hp_bar","storage":"player:temp","interpret":true},\
   {"nbt":"skill_icon","storage":"player:temp","interpret":true},{"translate":"space.53"},\
   {"nbt":"skill_bar","storage":"player:temp","interpret":true},{"translate":"space.2"},\
   {"nbt":"oxygen","storage":"player:temp","interpret":true},{"translate":"space.-126"},\
   {"nbt":"lvl","storage":"player:temp","interpret":true},\
   {"nbt":"gold","storage":"player:temp","interpret":true},\
   {"translate":"space.8"},"\uF82F",\
   {"nbt":"hp","storage":"player:temp","interpret":true}]

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