# 弓を弾き絞っている間スコア加算
    scoreboard players add @s BowCharge 1
# 溜め攻撃の演出
    execute if score @s skill_cd matches 1.. if score @s BowCharge matches 41.. run tag @s add BowSkillOnCD
    execute if score @s skill_cd matches 0 if score @s BowCharge matches 28.. run function combat:main/bow/skill/charging
# リセット
    advancement revoke @s only core:trigger/bow/hold