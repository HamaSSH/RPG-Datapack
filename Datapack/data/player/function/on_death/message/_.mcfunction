#> player:on_death/message/_
# 死亡メッセージ

execute if data storage player: DeathMessage.Damage{Natural:"Fire"} run return run function player:on_death/message/fire
execute if data storage player: DeathMessage.Damage{Natural:"Wither"} run return run function player:on_death/message/wither
execute if data storage player: DeathMessage.Damage{Natural:"Fall"} run return run function player:on_death/message/fall
execute if entity @s[advancements={player:combat/player_hurt={Ranged=true}}] run return run function player:on_death/message/ranged
execute if entity @s[advancements={player:combat/player_hurt={Melee=true}}] run return run function player:on_death/message/melee
return run function player:on_death/message/unknown