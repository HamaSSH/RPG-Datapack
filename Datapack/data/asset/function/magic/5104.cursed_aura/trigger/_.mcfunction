#> asset:magic/5104.cursed_aura/trigger/_
# 魔法発動時の処理

# プレイヤー用tickの始動
    scoreboard players add @s 5104.Tick 0

# 素早さバフ
    data modify storage player: NewBuff set value [{status:"STR",duration:400,amplifier:15},{status:"INT",duration:400,amplifier:15}]
    function player:buff/_

# 演出
    playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~ 0.5 0.9
    playsound minecraft:item.firecharge.use master @s ~ ~ ~ 1 0.6