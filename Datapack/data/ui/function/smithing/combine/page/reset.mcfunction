#> ui:smithing/combine/page/reset
# ページ移動の際のページリセット処理

scoreboard players set @s UIPage 0

# 効果音
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound ui.button.click master @s ~ ~ ~ 0.2 1.8
    execute if entity @s[tag=PlaysoundOnce] run tag @s remove PlaysoundOnce