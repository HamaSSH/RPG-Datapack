# スロット12
    data modify storage menu:temp Data.brewing[0].Slot set value 12b
    data modify storage menu:temp Data.refresh append from storage menu:temp Data.brewing[0]
    data remove storage menu:temp Data.brewing[0]
# 演出
    execute if data storage menu:temp Data.refresh[{Slot:12b}] run playsound ui.button.click master @p ~ ~ ~ 0.3 2.0