# 与ダメージ計算
  function attack:player_attacked/dmg_dealt
  scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
# 武器種によって異なる当たり判定呼び出し
  # 短剣
    execute if predicate attack:charged/dagger run function attack:left_click/dagger/_
    execute if predicate attack:skill/dagger run function attack:left_click/dagger/skill/cost
    execute if predicate attack:fail/dagger run function attack:left_click/dagger/fail
  # 刀剣
    execute if predicate attack:charged/sword run function attack:left_click/sword/_
    execute if predicate attack:skill/sword run function attack:left_click/sword/skill/cost
    execute if predicate attack:fail/sword run function attack:left_click/sword/fail
  # 槍
    execute if predicate attack:charged/spear run function attack:left_click/spear/_
    execute if predicate attack:skill/spear run function attack:left_click/spear/skill/cost
    execute if predicate attack:fail/spear run function attack:left_click/spear/fail
  # ハンマー
    execute if predicate attack:charged/hammer run function attack:left_click/hammer/_
    execute if predicate attack:skill/hammer run function attack:left_click/hammer/skill/cost
    execute if predicate attack:fail/hammer run function attack:left_click/hammer/fail
  # 杖
    execute if predicate attack:charged/wand run function attack:left_click/wand/_
    execute if predicate attack:skill/wand run function attack:left_click/wand/skill/cost
    execute if predicate attack:fail/wand run function attack:left_click/wand/fail
# 弓の左クリック検知
  execute if predicate attack:charged/bow run function attack:left_click/bow/_
# リセット
  scoreboard players reset $DmgDealt