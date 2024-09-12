#> player:class/fighter/passive/skill3/check
# 反撃先のモブを土台のモブに確実に移してから反撃

execute if entity @s[type=silverfish,tag=HasVehicle] on vehicle run function player:class/fighter/passive/skill3/_
execute unless entity @s[type=silverfish,tag=HasVehicle] run function player:class/fighter/passive/skill3/_