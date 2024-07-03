#> item:zukan/fish/update
# 魚図鑑の更新

$execute if items entity @s weapon.mainhand written_book[custom_data~{type:"fish_zukan"}] unless items entity @s weapon.mainhand written_book[custom_data~{ver:$(zukan_ver)}] run item modify entity @s weapon.mainhand item:zukan/fish/update
$execute if items entity @s weapon.offhand written_book[custom_data~{type:"fish_zukan"}] unless items entity @s weapon.offhand written_book[custom_data~{ver:$(zukan_ver)}] run item modify entity @s weapon.offhand item:zukan/fish/update