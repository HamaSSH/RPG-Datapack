# MobIDをフェイクプレイヤーに渡して分岐
  data modify storage mob:temp CustomName set from entity @s CustomName
  scoreboard players operation $MobID Temporary = @s MobID
  execute if score $MobID Temporary matches 0..63 run function mob:status/hp/display/name/lv1/0
  execute if score $MobID Temporary matches 64..127 run function mob:status/hp/display/name/lv1/1
  execute if score $MobID Temporary matches 128..191 run function mob:status/hp/display/name/lv1/2
  execute if score $MobID Temporary matches 192..255 run function mob:status/hp/display/name/lv1/3
  execute if score $MobID Temporary matches 256..319 run function mob:status/hp/display/name/lv1/4
  execute if score $MobID Temporary matches 320..383 run function mob:status/hp/display/name/lv1/5
  execute if score $MobID Temporary matches 384..447 run function mob:status/hp/display/name/lv1/6
  execute if score $MobID Temporary matches 448..511 run function mob:status/hp/display/name/lv1/7
# リセット
  data remove storage mob:temp CustomName
  scoreboard players reset $MobID