### 魔法関連の#tick

# 魔法弾の#tick
  execute store result storage magic:asset id int 1 run scoreboard players get @s MagicID
  function #magic:tick
# リセット
  data remove storage magic:asset id