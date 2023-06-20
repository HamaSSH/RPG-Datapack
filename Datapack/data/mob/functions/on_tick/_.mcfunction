##########
#>
#

# バフタイマー(もしバフにかかっていれば)
    execute if predicate core:is_buffed run scoreboard players add @s buff_timer 1
    execute if score @s buff_timer matches 4.. run function mob:buff/manager/4tick