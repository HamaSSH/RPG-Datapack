##########
#>
#

# スロット10
    data modify storage menu:temp Data.upgrading[0].Slot set value 10b
    data modify storage menu:temp Data.refresh append from storage menu:temp Data.upgrading[0]
    data remove storage menu:temp Data.upgrading[0]