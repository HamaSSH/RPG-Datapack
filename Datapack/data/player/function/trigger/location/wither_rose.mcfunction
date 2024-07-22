#> player:trigger/location/wither_rose
# ウィザーローズに乗った際の処理

# 衰弱エフェクト
    data modify storage player: NewBuff set value [{effect:"wither",duration:20,amplifier:1}]
    function player:buff/_

# リセット
    advancement revoke @s only player:trigger/location/wither_rose