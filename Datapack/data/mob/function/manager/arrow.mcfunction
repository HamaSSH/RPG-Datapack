#> mob:manager/arrow
# モブの放つarrowの初期化

data modify entity @s item.components.minecraft:potion_contents.custom_effects[].duration set value -1
data modify entity @s PierceLevel set value 5
data modify entity @s pickup set value 0b
data modify entity @s SoundEvent set value "entity.player.attack.crit"
tag @s add Flying
tag @s add ArrowInit

# 自動的に消滅させる
    scoreboard players set @s Timer 20
    tag @s add AutoKill