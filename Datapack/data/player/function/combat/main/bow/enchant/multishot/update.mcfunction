#> player:combat/main/bow/enchant/multishot/update
# 弓のマルチショットエンチャント更新

$execute if items entity @s weapon.mainhand bow[custom_data~{item_group_name:"弓"}] unless items entity @s weapon.mainhand bow[enchantments={"multishot":$(multishot),"player:bow":1}] run item modify entity @s weapon.mainhand player:enchant/multishot
$execute if items entity @s weapon.offhand bow[custom_data~{item_group_name:"弓"}] unless items entity @s weapon.offhand bow[enchantments={"multishot":$(multishot),"player:bow":1}] run item modify entity @s weapon.offhand player:enchant/multishot