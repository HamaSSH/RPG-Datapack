# 弓を弾き絞っている間スコア加算
  playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.3 1
  scoreboard players add @s BowCharge 1
  tag @s add BowCharging
# リセット
  advancement revoke @s only core:bow_hold