# バフ呼び出し
    say 食べた
    # data modify storage core:temp Data.buff set from entity @s data.buff
    data modify storage core:temp Data.buff set value [{bonus:"ad",duration:20,value:10}]
    function core:buff/manager/_
# 演出
    playsound entity.player.burp master @s ~ ~ ~ 0.6 1
    playsound entity.generic.eat master @s ~ ~ ~ 1 1
# リセット
    advancement revoke @s only core:trigger/consume_item/_