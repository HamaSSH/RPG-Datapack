# ダメージ表示
  execute store result storage attack:temp Damage int 1 run scoreboard players get @s dmg_received
  scoreboard players operation $DmgReceived Temporary = @s dmg_received
  execute if entity @s[type=#mob:size/short] positioned ~ ~0.9 ~ run function attack:damage/display/summon
  execute if entity @s[type=#mob:size/medium] positioned ~ ~1.3 ~ run function attack:damage/display/summon
  execute if entity @s[type=#mob:size/human] positioned ~ ~1.8 ~ run function attack:damage/display/summon
  execute if entity @s[type=#mob:size/tall] positioned ~ ~2.4 ~ run function attack:damage/display/summon
# リセット
  data remove storage attack:temp Damage
  scoreboard players reset $DmgReceived