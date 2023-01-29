# スロット12
    data modify storage menu:temp Data.cooking[0].Slot set value 12b
    data modify storage menu:temp Data.refresh append from storage menu:temp Data.cooking[0]
    data remove storage menu:temp Data.cooking[0]