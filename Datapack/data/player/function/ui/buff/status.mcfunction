#> player:ui/buff/status
# ステータスバフUIを並べる

# バフの総数を記録
    scoreboard players add $BuffCount Temporary 1

# バフのUIアイコンを配列に追加
    data modify storage player:ui buff.main append from entity @s data.buff.icon