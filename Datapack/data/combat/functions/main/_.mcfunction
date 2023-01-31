##########
#>
#

# 与ダメージ計算
    function combat:player_attacked/dmg_dealt
    scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
# 武器種によって異なる当たり判定呼び出し
    # 短剣
        execute if predicate combat:dagger/charged run function combat:main/dagger/_
        execute if predicate combat:dagger/skill run function combat:main/dagger/skill/cost
        execute if predicate combat:dagger/fail run function combat:main/dagger/fail
    # 刀剣
        execute if predicate combat:sword/charged run function combat:main/sword/_
        execute if predicate combat:sword/skill run function combat:main/sword/skill/cost
        execute if predicate combat:sword/fail run function combat:main/sword/fail
    # 槍
        execute if predicate combat:spear/charged run function combat:main/spear/_
        execute if predicate combat:spear/skill run function combat:main/spear/skill/cost
        execute if predicate combat:spear/fail run function combat:main/spear/fail
    # ハンマー
        execute if predicate combat:hammer/charged run function combat:main/hammer/_
        execute if predicate combat:hammer/skill run function combat:main/hammer/skill/cost
        execute if predicate combat:hammer/fail run function combat:main/hammer/fail
    # 杖
        execute if predicate combat:wand/charged run function combat:main/wand/_
        execute if predicate combat:wand/skill run function combat:main/wand/skill/cost
        execute if predicate combat:wand/fail run function combat:main/wand/fail
# 弓の左クリック検知
    execute if predicate combat:bow/charged run function combat:main/bow/_
# リセット
    function core:trigger/sneak/reset
    tag @s remove CriticalHit
    scoreboard players reset $DmgDealt