# 与ダメージ計算
  function attack:player_attacked/dmg_dealt
  scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
# 武器種によって異なる当たり判定呼び出し
  # 短剣
    execute if predicate attack:charged/dagger run function attack:main/dagger/_
    execute if predicate attack:skill/dagger run function attack:main/dagger/skill/cost
    execute if predicate attack:fail/dagger run function attack:main/dagger/fail
  # 刀剣
    execute if predicate attack:charged/sword run function attack:main/sword/_
    execute if predicate attack:skill/sword run function attack:main/sword/skill/cost
    execute if predicate attack:fail/sword run function attack:main/sword/fail
  # 槍
    execute if predicate attack:charged/spear run function attack:main/spear/_
    execute if predicate attack:skill/spear run function attack:main/spear/skill/cost
    execute if predicate attack:fail/spear run function attack:main/spear/fail
  # ハンマー
    execute if predicate attack:charged/hammer run function attack:main/hammer/_
    execute if predicate attack:skill/hammer run function attack:main/hammer/skill/cost
    execute if predicate attack:fail/hammer run function attack:main/hammer/fail
  # 杖
    execute if predicate attack:charged/wand run function attack:main/wand/_
    execute if predicate attack:skill/wand run function attack:main/wand/skill/cost
    execute if predicate attack:fail/wand run function attack:main/wand/fail
# 弓の左クリック検知
  execute if predicate attack:charged/bow run function attack:main/bow/_
# リセット
  tag @s remove CriticalHit
  scoreboard players reset $DmgDealt