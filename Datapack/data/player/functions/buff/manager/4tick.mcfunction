##########
#>
#

# バフを受けているプレイヤーをタグ付け
    tag @s add this
# PlayerIDが一致するmarkerのbuff.durationを1減算
    execute as @e[type=marker,tag=Buff] if score @s PlayerID = @a[tag=this,limit=1] PlayerID run function player:buff/manager/duration
# もしまだ存在する場合はタイマーを回す
    advancement revoke @s only player:buff/4tick
    execute if predicate core:is_buffed run advancement grant @s only player:buff/4tick tick0
# リセット
    data remove storage player:temp Data
    tag @s remove this