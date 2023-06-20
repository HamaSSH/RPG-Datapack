##########
#>
#

# プレイヤーとチェストトロッコの結び付け
    scoreboard players operation @s PlayerID = @p PlayerID
    tag @p add Menu
# チェストトロッコ初期処理
    tag @s remove MenuInit
    tag @s add Open
    tp @s ~ ~-2 ~
# メニュー管理マーカー初期処理
    summon marker ^ ^ ^10 {Tags:["MenuManager"]}
    execute positioned ^ ^ ^10 as @e[type=marker,tag=MenuManager,distance=..0.01,sort=nearest,limit=1] positioned ^ ^ ^-10 run scoreboard players operation @s PlayerID = @p PlayerID