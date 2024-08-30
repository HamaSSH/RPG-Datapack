#> player:combat/main/dagger/skill/tick
# 短剣の神速切り

execute if predicate lib:percentage/50 run function player:combat/main/dagger/skill/_

# リセット
    execute if score @s SkillTimer matches 340 run tag @s remove DaggerSkill
    scoreboard players reset $SkillTimer%2 Temporary