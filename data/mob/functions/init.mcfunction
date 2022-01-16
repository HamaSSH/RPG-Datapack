# test
  scoreboard players set @s hp 150
  scoreboard players set @s hp_max 150
# 重複のないようなMobIDの生成
  scoreboard players add World MobID 1
  scoreboard players operation World MobID %= #512 Constant
  scoreboard players operation @s MobID = World MobID
  scoreboard players operation $IDtoTag MobID = World MobID
# MobID → タグに変換
  execute if score $IDtoTag MobID matches 256.. run tag @s add MobID8.1
  execute unless score $IDtoTag MobID matches 256.. run tag @s add MobID8.0
  execute if score $IDtoTag MobID matches 256.. run scoreboard players remove $IDtoTag MobID 256
  execute if score $IDtoTag MobID matches 128.. run tag @s add MobID7.1
  execute unless score $IDtoTag MobID matches 128.. run tag @s add MobID7.0
  execute if score $IDtoTag MobID matches 128.. run scoreboard players remove $IDtoTag MobID 128
  execute if score $IDtoTag MobID matches 64.. run tag @s add MobID6.1
  execute unless score $IDtoTag MobID matches 64.. run tag @s add MobID6.0
  execute if score $IDtoTag MobID matches 64.. run scoreboard players remove $IDtoTag MobID 64
  execute if score $IDtoTag MobID matches 32.. run tag @s add MobID5.1
  execute unless score $IDtoTag MobID matches 32.. run tag @s add MobID5.0
  execute if score $IDtoTag MobID matches 32.. run scoreboard players remove $IDtoTag MobID 32
  execute if score $IDtoTag MobID matches 16.. run tag @s add MobID4.1
  execute unless score $IDtoTag MobID matches 16.. run tag @s add MobID4.0
  execute if score $IDtoTag MobID matches 16.. run scoreboard players remove $IDtoTag MobID 16
  execute if score $IDtoTag MobID matches 8.. run tag @s add MobID3.1
  execute unless score $IDtoTag MobID matches 8.. run tag @s add MobID3.0
  execute if score $IDtoTag MobID matches 8.. run scoreboard players remove $IDtoTag MobID 8
  execute if score $IDtoTag MobID matches 4.. run tag @s add MobID2.1
  execute unless score $IDtoTag MobID matches 4.. run tag @s add MobID2.0
  execute if score $IDtoTag MobID matches 4.. run scoreboard players remove $IDtoTag MobID 4
  execute if score $IDtoTag MobID matches 2.. run tag @s add MobID1.1
  execute unless score $IDtoTag MobID matches 2.. run tag @s add MobID1.0
  execute if score $IDtoTag MobID matches 2.. run scoreboard players remove $IDtoTag MobID 2
  execute if score $IDtoTag MobID matches 1.. run tag @s add MobID0.1
  execute unless score $IDtoTag MobID matches 1.. run tag @s add MobID0.0
  execute if score $IDtoTag MobID matches 1.. run scoreboard players remove $IDtoTag MobID 1
# 名前をstorageに保存
  function mob:status/hp/display/name/_
# リセット
  scoreboard players reset $IDtoTag
  tag @s remove Init