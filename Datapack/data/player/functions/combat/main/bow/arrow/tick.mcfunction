#> player:combat/main/bow/arrow/tick
# 矢の常時実行処理

# パーティクル
    function player:combat/main/bow/arrow/particle

# ため攻撃矢の常時実行
    execute if entity @s[tag=BowSkillMeteor] run function player:combat/main/bow/skill/meteor/tick
    execute if entity @s[tag=BowSkillShot] run function player:combat/main/bow/skill/shot/tick
    execute if entity @s[tag=MeteoriteArrow] run function player:combat/main/bow/skill/meteor/meteorite/tick

# 着弾したら一定時間後消滅
    execute if data entity @s {inGround:1b} run function player:combat/main/bow/arrow/landed