#> player:trigger/location/pitcher_crop
# ウツボカズラに乗った際の処理

# 衰弱エフェクト
    data modify storage player: NewBuff set value [{effect:"jump_boost",duration:30,amplifier:1},{effect:"slow_falling",duration:30,amplifier:0}]
    function player:buff/_

# リセット
    advancement revoke @s only player:trigger/location/pitcher_crop