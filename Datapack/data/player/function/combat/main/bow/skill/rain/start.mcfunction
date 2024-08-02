#> player:combat/main/bow/skill/rain/start
# ため攻撃開始

scoreboard players set @s SkillTimer 400
execute positioned ~ ~1.52 ~ as @e[type=arrow,tag=Flying,distance=..5] if score @s PlayerID = @p[tag=Shooter] PlayerID run function player:combat/main/bow/skill/rain/init
tag @s remove MPCheckPass

# slow_fallingエフェクト
    data modify storage player: NewBuff set value [{effect:"slow_falling",duration:60,amplifier:5}]
    function player:buff/_

# 上に飛ぶ
    scoreboard players set $MotionPower Temporary -12000
    function lib:p_motion/apply
    scoreboard players reset $MotionPower Temporary

# 演出
    playsound entity.phantom.flap master @a ~ ~ ~ 1.0 1.5
    playsound entity.phantom.flap master @a ~ ~ ~ 1.0 1.3
    playsound entity.wither.shoot master @a ~ ~ ~ 0.3 1.8