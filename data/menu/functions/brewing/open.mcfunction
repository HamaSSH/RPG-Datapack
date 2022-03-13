# 開けたチェストトロッコの初期処理
  execute positioned ~ ~1.2 ~ as @e[type=chest_minecart,tag=MenuInit,distance=..0,sort=nearest,limit=1] positioned ~ ~-1.2 ~ run function menu:brewing/init
# リセット
  advancement revoke @s only menu:brewing/open