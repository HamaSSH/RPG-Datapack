# バフを受けているプレイヤー
    tag @s add this
# PlayerIDが一致するmarkerのbuff.durationを1減算
    execute as @e[type=marker,tag=Buff] if score @s PlayerID = @a[tag=this,limit=1] PlayerID run function core:buff/manager/duration
# buff.durationが0であればプレイヤーのバフスコアの減算
    execute if data storage core:temp Data.buff{duration:0} run function core:buff/remove
# もしまだ存在する場合はタイマーを回す
    advancement revoke @s only core:buff/1sec
    execute if predicate core:is_buffed run advancement grant @s only core:buff/1sec tick0
# リセット
    data remove storage core:temp Data
    tag @s remove this