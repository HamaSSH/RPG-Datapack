#> item:zukan/fish/update
# 釣り図鑑の更新

$execute if items entity @s weapon.mainhand written_book[custom_data~{zukan:"fish"}] unless items entity @s weapon.mainhand written_book[custom_model_data=$(CMD)] run loot replace entity @s weapon.mainhand loot asset:item/$(CMD)
$execute if items entity @s weapon.mainhand written_book[custom_data~{zukan:"fish"}] unless items entity @s weapon.mainhand written_book[custom_data~{ver:$(zukan_ver)}] run item modify entity @s weapon.mainhand item:zukan/fish/update
$execute if items entity @s weapon.offhand written_book[custom_data~{zukan:"fish"}] unless items entity @s weapon.offhand written_book[custom_model_data=$(CMD)] run loot replace entity @s weapon.offhand loot asset:item/$(CMD)
$execute if items entity @s weapon.offhand written_book[custom_data~{zukan:"fish"}] unless items entity @s weapon.offhand written_book[custom_data~{ver:$(zukan_ver)}] run item modify entity @s weapon.offhand item:zukan/fish/update