#> core:migration/v0.1.2
# v0.1.2にアップデートする際の処理

# バージョン設定
    data modify storage global: Version set value "v0.1.2"

# 以前設置した醸造の削除
    kill @e[type=polar_bear,tag=BrewingBear]
    setblock 616 133 -770 air

# 醸造・鍛冶・店の設置
    execute positioned 630 134 -772 run function ui:brewing/place
    execute positioned 630 134 -770 run function ui:smithing/place
    execute positioned 619 133 -776 run function asset:npc/001.equipment/summon
    execute positioned 620 133 -776 run function asset:npc/002.loot/summon
    execute positioned 618 133 -775 run function asset:npc/003.food/summon

# 初期装備樽の削除
    setblock 624 133 -771 air