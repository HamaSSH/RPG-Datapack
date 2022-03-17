# 装備品メニューに移行
    function menu:crafting/equipment/refresh
# ページスコアを設定
    execute positioned ^ ^ ^10 as @e[type=marker,tag=MenuManager,distance=..5] if score @s PlayerID = @p PlayerID run scoreboard players set @s page 1200
# 演出
    scoreboard players set $ButtonClicked Temporary 1
    playsound block.anvil.use master @p ~ ~ ~ 1 2