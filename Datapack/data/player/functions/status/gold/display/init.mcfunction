# ゴールド
    item modify entity @s armor.head player:gold_display
    data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name
# 消えるまでの時間
    scoreboard players set @s gold_timer 30