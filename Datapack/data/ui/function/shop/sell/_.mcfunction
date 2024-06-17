#> ui:shop/sell/_
# アイテム売却処理

# スロット内のアイテムの売価を取得
    data modify storage ui: ItemData append from storage ui: NewItems[{tag:{CanSell:1b}}]
    function ui:shop/sell/price

# プレイヤーのGoldに売価を追加
    execute on vehicle on vehicle on attacker run scoreboard players operation @s Gold += $TotalPrice Temporary

# 売却情報の表示
    tellraw @p [{"text":"> 計"},{"score":{"name":"$TotalCount","objective":"Temporary"}},{"text":"個のアイテムを売却した。"},{"text":" (+"},{"score":{"name":"$TotalPrice","objective":"Temporary"}},{"text":"G","color":"#FFEE59"},{"text":")"}]

# 演出
    execute if score $TotalPrice Temporary matches 1.. run playsound entity.villager.yes master @p ~ ~ ~ 1 1.1
    execute if score $TotalPrice Temporary matches 1.. run playsound entity.experience_orb.pickup master @p ~ ~ ~ 0.25 1.5

# ページを移動する
    scoreboard players set @s UIPage 0

# リセット
    data remove storage ui: NewItems[{tag:{CanSell:1b}}]
    scoreboard players reset $TotalPrice Temporary
    scoreboard players reset $TotalCount Temporary