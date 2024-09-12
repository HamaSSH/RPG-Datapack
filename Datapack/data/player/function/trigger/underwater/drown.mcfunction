#> player:trigger/underwater/drown
# 酸素が切れた際のダメージ処理

function player:on_hurt/natural/drown
scoreboard players set @s Oxygen 0