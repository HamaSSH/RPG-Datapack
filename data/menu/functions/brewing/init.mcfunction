# プレイヤーとチェストトロッコの結び付け
  scoreboard players operation @s PlayerID = @p PlayerID
# メニュー開き成功演出
  playsound minecraft:block.brewing_stand.brew master @p ~ ~ ~ 1.0 1.1
  tag @p add Menu
# チェストトロッコ初期処理
  item modify entity @s container.17 menu:set_gold
  data modify storage menu:temp Data.Items set from entity @s Items
  tp @s ~ ~5.0 ~
  tag @s remove MenuInit
  tag @s add Open
# メニュー管理マーカー初期処理
  summon marker ^ ^ ^10 {Tags:["MenuManager"]}
  execute positioned ^ ^ ^10 as @e[type=marker,tag=MenuManager,distance=..0.01,sort=nearest,limit=1] positioned ^ ^ ^-10 run scoreboard players operation @s PlayerID = @p PlayerID
  execute positioned ^ ^ ^10 as @e[type=marker,tag=MenuManager,distance=..0.01,sort=nearest,limit=1] run data modify entity @s data.Items set from storage menu:temp Data.Items
# リセット
  data remove storage menu:temp Data