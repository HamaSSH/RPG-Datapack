#> asset:mob/stray/attack
# 攻撃時の動作

# 素早さデバフ
    data modify storage player: NewBuff set value [{status:"AGI",duration:100,amplifier:-100}]
    execute as @p[tag=Victim] run function player:buff/_