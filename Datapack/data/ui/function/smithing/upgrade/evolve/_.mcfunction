#> ui:smithing/upgrade/evolve/_
# 別のアイテムに進化

tag @s remove Upgradable

# 強化用アイテムのclear
    function ui:smithing/upgrade/clear/_
    data remove storage ui: ItemData.ui

# ゴールド消費
    execute on vehicle on vehicle on attacker run scoreboard players operation @s Gold -= $UpgradeGold Temporary

# ネザライトに進化
    $loot replace entity 83a-51-1-0-1 weapon.mainhand loot asset:item/netherite_$(item_type)
    data modify storage ui: EvolvedItem set from entity 83a-51-1-0-1 HandItems[0]
    data modify storage ui: EvolvedItem.Slot set value 10b
    data modify storage ui: NewItems[{Slot:10b}] set from storage ui: EvolvedItem

# UIページを最初に戻す
    scoreboard players set @s UIPage 0

# 演出
    playsound block.anvil.place master @a ~ ~ ~ 0.3 1.5
    playsound block.anvil.destroy master @a ~ ~ ~ 0.3 0.7
    playsound block.anvil.use master @a ~ ~ ~ 0.3
    playsound resource:custom.levelup master @a ~ ~ ~ 0.4 1.1
    playsound block.respawn_anchor.set_spawn master @a ~ ~ ~ 1 1.5

# リセット
    tag @s remove PlaysoundOnce
    item replace entity 83a-51-1-0-1 weapon.mainhand with air
    data remove storage ui: EvolvedItem