# 弓の減算
    scoreboard players remove @s Arrow 1
# 矢の召喚
    function combat:main/bow/arrow/summon/_
# Arrowスコアが0になれば矢筒(arrow)→矢筒(carrot_on_a_stick)
    execute if score @s Arrow matches ..0 run function combat:main/bow/quiver/no_arrow