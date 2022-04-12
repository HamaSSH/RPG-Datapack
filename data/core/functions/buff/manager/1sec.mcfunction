# PlayerIDが一致するmarkerのbuff.durationを1減算
    say 1sec
# buff.durationが0であればプレイヤーのバフスコアの減算
    execute if data storage core:temp Data.buff{duration:0} run function core:buff/remove
# リセット
    data remove storage core:temp Data
    advancement revoke @s only core:buff/1sec
# もしまだ存在する場合はタイマー始動
    execute unless data storage core:temp Data.buff{duration:0} run advancement grant @s only core:buff/1sec tick0