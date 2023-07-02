#> item:fishing/no_durability
# 釣り竿を右クリック不能にする

# 釣り竿 → ニンジン付きの棒
    data modify storage item: Data.id set value "carrot_on_a_stick"
    data modify storage item: Data.tag.Damage set value 25

# アイテムをプレイヤーに渡す
    data remove block 0 0 0 Items
    data modify block 0 0 0 Items append from storage item: Data
    loot replace entity @s weapon.mainhand 1 mine 0 0 0 debug_stick