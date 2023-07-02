#> core:trigger/fishing_rod/use
# 釣り竿を振るトリガー

# PlayerIDの付与
    execute anchored eyes positioned ^ ^ ^ run scoreboard players operation @e[type=fishing_bobber,distance=..1] PlayerID = @s PlayerID

# Lureエンチャントのレベルを浮きのスコアに保管
    data modify storage item: LureEnchant set from entity @s SelectedItem.tag.Enchantments[{id:"lure"}].lvl
    execute unless data storage item: LureEnchant run data modify storage item: LureEnchant set from entity @s Inventory[{Slot:-106b}].tag.Enchantments[{id:"lure"}].lvl
    execute anchored eyes positioned ^ ^ ^ as @e[type=fishing_bobber,distance=..1] store result score @s level run data get storage item: LureEnchant

# リセット
    data remove storage item: LureEnchant
    scoreboard players reset @s UsedFishingRod