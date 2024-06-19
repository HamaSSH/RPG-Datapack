#> mob:buff/_
# バフをモブに付与

# モブ検索用のタグとMobUUID
    tag @s add BuffOwner
    scoreboard players operation $MobUUID Temporary = @s MobUUID

# バフごとに管理用のMarkerを召喚＋モブのスコアを設定
    data modify storage mob: buff set from storage mob: NewBuff[0]
    execute if data storage mob: NewBuff[0] run function mob:buff/shaping
    execute positioned 0.0 2.0 0.0 run function mob:buff/init with storage mob: buff

# リセット
    tag @s remove BuffOwner
    scoreboard players reset $MobUUID Temporary
    data remove storage mob: NewBuff
    data remove storage mob: buff