#> player:on_hurt/_
# プレイヤー被ダメージ時の処理

# ダメージ処理
    # 防御＋ダメージブレ補正
        function player:status/def/dmg_reduction
        function lib:damage/blur
    function lib:damage/received

# 死亡処理
    execute if score @s HP matches ..0 run function player:on_death/_