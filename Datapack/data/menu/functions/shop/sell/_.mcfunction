##########
#>
#

# お金足す
    scoreboard players operation @p gold += $TotalSellPrice Temporary
    execute if score $TotalCount Temporary matches 1.. run tellraw @p [{"text":"> 計"},{"score":{"name":"$TotalCount","objective":"Temporary"}},{"text":"個のアイテムを売却した。"},{"text":" (+"},{"score":{"name":"$TotalSellPrice","objective":"Temporary"}},{"text":"G","color":"#FFEE59"},{"text":")"}]
# 演出
    scoreboard players set $ButtonClicked Temporary 1
    execute unless score $TotalSellPrice Temporary matches 1.. run playsound entity.villager.no master @p ~ ~ ~ 1 1.1
    execute if score $TotalSellPrice Temporary matches 1.. run playsound entity.villager.yes master @p ~ ~ ~ 1 1.1
    execute if score $TotalSellPrice Temporary matches 1.. run playsound entity.experience_orb.pickup master @p ~ ~ ~ 0.25 1.5
# ホームページ(0)に戻る
    scoreboard players set @s page 10