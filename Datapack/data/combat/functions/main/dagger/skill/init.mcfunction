##########
#>
#

# ループ処理
    tag @s add DaggerTick
# クールダウン
    scoreboard players set @s skill_cd 300
# 演出(短剣溜め初期)
    function combat:main/dagger/_
    playsound entity.zombie.attack_iron_door master @a ~ ~ ~ 0.6 1.3
    playsound item.trident.thunder master @a ~ ~ ~ 0.3 2.0