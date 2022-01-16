# 属性
  tag @s add FireSkill
# 攻撃
  function attack:left_click/spear/skill/damage/_
  function attack:left_click/spear/skill/effect/_
# クールダウン
  scoreboard players set @s skill_cd 300
# リセット
  function core:trigger/sneak/reset