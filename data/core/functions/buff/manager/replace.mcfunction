# 減算する値を代入
    data modify storage core:temp Data.buff set from storage core:temp Data.compareBuff
    scoreboard players operation $Bonus Temporary = $CompareBonus Temporary
# プレイヤーのバフスコア減算
    execute as @a[tag=this,limit=1] run function core:buff/remove
    say replace
# 置き換えられたのでkill
    kill @s