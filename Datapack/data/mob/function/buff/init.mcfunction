#> mob:buff/init
# バフの初期化

# バフ管理用マーカーの召喚
    execute summon marker run function mob:buff/manager/init

# on origin を使うためのAECを(既存のが無ければ)召喚し、バフ管理用マーカーを乗せる
    execute as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] if score @s MobUUID = $MobUUID Temporary run tag @s add Target
    execute summon area_effect_cloud run function mob:buff/manager/root/_

# バフの種類が被っているかチェック
$execute as @e[type=area_effect_cloud,tag=Target,distance=..0.01] on passengers if data entity @s[tag=Status,tag=!BuffInit] data.buff{status:"$(status)"} run function mob:buff/manager/compare
$execute as @e[type=area_effect_cloud,tag=Target,distance=..0.01] on passengers if data entity @s[tag=Effect,tag=!BuffInit] data.buff{effect:"$(effect)"} run function mob:buff/manager/compare

    # (効果が同じで弱い)→バフ付与なし
        execute as @e[type=area_effect_cloud,tag=Target,distance=..0.01] on passengers if entity @s[tag=BuffWeak] run kill @s

    # (効果が強い|効果が逆)→既存のバフを上書き
        execute as @e[type=area_effect_cloud,tag=Target,distance=..0.01] on passengers if entity @s[tag=BuffOverwrite] run function mob:buff/manager/remove

# 新規バフの追加
    execute as @e[type=area_effect_cloud,tag=Target,distance=..0.01] on passengers if entity @s[tag=BuffInit] run function mob:buff/manager/add

# リセット
    tag @e[type=area_effect_cloud,tag=BuffRoot,tag=Target,distance=..0.01] remove Target

# NewBuffの中身が無くなるまで再帰
    data remove storage mob: NewBuff[0]
    data modify storage mob: buff set from storage mob: NewBuff[0]
    execute if data storage mob: NewBuff[0] run function mob:buff/shaping
    execute if data storage mob: NewBuff[0] run function mob:buff/init with storage mob: buff