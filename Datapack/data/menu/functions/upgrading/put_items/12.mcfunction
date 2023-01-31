##########
#>
#

# 素材がスタックしていた場合はCount-1したアイテムを返却
    execute store result storage menu:temp Data.combine[0].Count byte 0.999 run data get storage menu:temp Data.combine[0].Count
    data modify storage menu:temp Data.return append from storage menu:temp Data.combine[0]
    function menu:return_item/_
# スロット12
    data modify storage menu:temp Data.combine[0].Slot set value 12b
    data modify storage menu:temp Data.combine[0].Count set value 1b
    data modify storage menu:temp Data.refresh append from storage menu:temp Data.combine[0]
    data remove storage menu:temp Data.combine[0]