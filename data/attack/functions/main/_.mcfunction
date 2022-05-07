# 与ダメージ計算
    function attack:player_attacked/dmg_dealt
    scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
# 武器種によって異なる当たり判定呼び出し
    # 短剣
        execute if predicate attack:dagger/charged run function attack:main/dagger/_
        execute if predicate attack:dagger/skill run function attack:main/dagger/skill/cost
        execute if predicate attack:dagger/fail run function attack:main/dagger/fail
    # 刀剣
        execute if predicate attack:sword/charged run function attack:main/sword/_
        execute if predicate attack:sword/skill run function attack:main/sword/skill/cost
        execute if predicate attack:sword/fail run function attack:main/sword/fail
    # 槍
        execute if predicate attack:spear/charged run function attack:main/spear/_
        execute if predicate attack:spear/skill run function attack:main/spear/skill/cost
        execute if predicate attack:spear/fail run function attack:main/spear/fail
    # ハンマー
        execute if predicate attack:hammer/charged run function attack:main/hammer/_
        execute if predicate attack:hammer/skill run function attack:main/hammer/skill/cost
        execute if predicate attack:hammer/fail run function attack:main/hammer/fail
    # 杖
        execute if predicate attack:wand/charged run function attack:main/wand/_
        execute if predicate attack:wand/skill run function attack:main/wand/skill/cost
        execute if predicate attack:wand/fail run function attack:main/wand/fail
# 弓の左クリック検知
    execute if predicate attack:bow/charged run function attack:main/bow/_
# リセット
    function core:trigger/sneak/reset
    tag @s remove CriticalHit
    scoreboard players reset $DmgDealt