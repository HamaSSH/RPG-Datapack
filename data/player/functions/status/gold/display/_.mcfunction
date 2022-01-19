# スコア
  scoreboard players operation $GoldDisplay Temporary = @s GoldDisplay
# Gold表示
  summon armor_stand ~ ~ ~ {PortalCooldown:40,CustomNameVisible:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:["GoldDisplay"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b}],CustomName:'{"text":""}'}
  execute as @e[tag=GoldDisplay,distance=..0,limit=1] run function player:status/gold/display/init
# リセット
  scoreboard players reset $GoldDisplay
  scoreboard players reset @s GoldDisplay