# 食べたプレイヤーをタグ付け
    tag @s add this
# バフ呼び出し
    execute positioned 0 0 0 as @e[type=marker,tag=ConsumeTemp,distance=..0.01,limit=1] if score @s PlayerID = @a[tag=this,limit=1] PlayerID run data modify storage core:temp Data.newBuff set from entity @s data.buff
    execute positioned 0 0 0 as @e[type=marker,tag=ConsumeTemp,distance=..0.01,limit=1] run kill @s
    function core:buff/manager/_
# 演出
    playsound entity.player.burp master @s ~ ~ ~ 0.6 1
    playsound entity.generic.eat master @s ~ ~ ~ 1 1
# リセット
    tag @s remove this
    advancement revoke @s only core:trigger/consume_item/_