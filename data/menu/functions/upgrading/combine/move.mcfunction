# ページスコアを設定
    execute positioned ^ ^ ^10 as @e[type=marker,tag=MenuManager,distance=..5] if score @s PlayerID = @p PlayerID run scoreboard players set @s page 12
# 演出
    scoreboard players set $ButtonClicked Temporary 1
    playsound minecraft:block.grindstone.use master @p ~ ~ ~ 1 1.5