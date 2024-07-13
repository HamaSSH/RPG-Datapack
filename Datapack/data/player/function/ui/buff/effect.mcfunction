#> player:ui/buff/effect
# エフェクトUIを並べる

# エフェクトの総数を記録
    scoreboard players add $EffectCount Temporary 1

# バフのUIアイコンを配列に追加
    data modify storage player:ui buff.main append from entity @s data.buff.icon