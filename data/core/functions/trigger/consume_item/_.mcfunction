# 食べたプレイヤーをタグ付け
    tag @s add this
# バフ呼び出し
    # data modify storage core:temp Data.buff set from entity @s data.buff
    data modify storage core:temp Data.buff set value [{bonus:"ad",duration:8,value:10},{bonus:"ap",duration:4,value:10}]
    function core:buff/manager/_
# 演出
    playsound entity.player.burp master @s ~ ~ ~ 0.6 1
    playsound entity.generic.eat master @s ~ ~ ~ 1 1
# リセット
    tag @s remove this
    advancement revoke @s only core:trigger/consume_item/_