# 攻撃
  # 与ダメージ計算
    scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
    scoreboard players operation $DmgDealt Temporary *= #4 Constant
    scoreboard players add $DmgDealt Temporary 10
  # ノックバック
    scoreboard players set $XPower Temporary 100
    scoreboard players set $YPower Temporary 300
  # 当たり判定
    execute positioned ^ ^ ^2 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..5,sort=nearest,limit=10] positioned ^10 ^ ^ if entity @s[distance=..11] positioned ^-20 ^ ^ if entity @s[distance=..11] run function attack:left_click/hit
  # リセット
    function core:trigger/sneak/reset
    scoreboard players reset $DmgDealt
    scoreboard players reset $XPower
    scoreboard players reset $YPower
# 属性
  execute if entity @s[tag=FireSkill] run function attack:left_click/spear/skill/damage/fire