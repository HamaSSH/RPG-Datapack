# スコア
  scoreboard players operation $XPDisplay Temporary = @s xp
# XP表示
  summon armor_stand ~ ~ ~ {PortalCooldown:60,CustomNameVisible:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:["XPDisplay"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b}],CustomName:'{"text":""}'}
  execute as @e[tag=XPDisplay,distance=..0,limit=1] run function mob:on_death/xp/display/init
# リセット
  scoreboard players reset $XPDisplay