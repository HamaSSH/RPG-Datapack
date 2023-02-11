##########
#>
#

# 毎回
    scoreboard players operation @s BaseHP += /10 Temporary
    scoreboard players operation @s BaseMP += /10 Temporary
    scoreboard players add @s BaseHP 3
    scoreboard players add @s BaseMP 6
    scoreboard players add @s BaseAP 1
# 数レベルごと
    # HP(+自然回復)
        execute if score %2 Temporary matches 0 run scoreboard players add @s BaseHP 1
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseHP 2
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseHP 4
        execute if score %7 Temporary matches 0 run scoreboard players add @s BaseHP 5
        execute if score %10 Temporary matches 1 run scoreboard players add @s BaseHPRegen 5
        execute if score %10 Temporary matches 3 run scoreboard players add @s BaseHPRegen 10
        execute if score %10 Temporary matches 7 run scoreboard players add @s BaseHPRegen 15
        execute if score %10 Temporary matches 9 run scoreboard players add @s BaseHPRegen 10
        execute if score %10 Temporary matches 0 run scoreboard players add @s BaseHPRegen 40
    # MP(+自然回復)
        execute if score %2 Temporary matches 0 run scoreboard players add @s BaseMP 3
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseMP 4
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseMP 5
        execute if score %7 Temporary matches 0 run scoreboard players add @s BaseMP 6
        execute if score %10 Temporary matches 1 run scoreboard players add @s BaseMPRegen 25
        execute if score %10 Temporary matches 3 run scoreboard players add @s BaseMPRegen 20
        execute if score %10 Temporary matches 7 run scoreboard players add @s BaseMPRegen 15
        execute if score %10 Temporary matches 9 run scoreboard players add @s BaseMPRegen 20
        execute if score %10 Temporary matches 0 run scoreboard players add @s BaseHPRegen 80
    # 物理攻撃力
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseAD 1
        execute if score %7 Temporary matches 0 run scoreboard players add @s BaseAD 1
    # 魔法攻撃力
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseAP 1
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseAP 1
        execute if score %7 Temporary matches 0 run scoreboard players add @s BaseAP 1
    # 防御力
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseDEF 1
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseDEF 3
    # 素早さ
        execute if score %2 Temporary matches 0 run scoreboard players add @s BaseSPD 1
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseSPD 2
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseSPD 3
    # 会心
        execute if score %2 Temporary matches 0 run scoreboard players add @s BaseCRT 1
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseCRT 2
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseCRT 3
    # 幸運
        execute if score %2 Temporary matches 0 run scoreboard players add @s BaseLUK 1
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseLUK 2
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseLUK 3