# バフを受けているプレイヤーをタグ付け
    tag @s add this
# MobIDが一致するmarkerのbuff.durationを1減算
    execute as @e[type=marker,tag=MobBuff] if score @s MobID = @e[tag=this,limit=1] MobID run function mob:buff/manager/duration
# もしまだ存在する場合はタイマーを回す
    scoreboard players set @s buff_timer 0
# リセット
    data remove storage mob:temp Data
    tag @s remove this