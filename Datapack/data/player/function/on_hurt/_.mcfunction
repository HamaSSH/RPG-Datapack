#> player:on_hurt/_
# プレイヤー被ダメージ時の処理

# ダメージ処理
    # 防御＋ダメージブレ補正
        execute if data storage lib: Damage{Type:"Melee"} run function player:status/def/dmg_reduction
        execute if score @s Shield matches 1.. run function player:class/paladin/passive/skill3/dmg_reduction
        function lib:damage/blur
    function lib:damage/received

# 被ダメージ時ステータス更新(ファイターの闘志用)
    execute if predicate player:class/is_fighter run tag @s add StatusUpdate

# ダンジョンノーダメチャレンジ失敗
    tag @s remove 3.4.NoDamage

# 死亡処理
    execute if score @s HP matches ..0 run function player:on_death/_