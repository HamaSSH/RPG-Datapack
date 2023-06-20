##########
#>
#

# 初期ステータス
    scoreboard players set @s level 1
    scoreboard players set @s WarriorLVL 1
    scoreboard players set @s SkillLevel 1
    scoreboard players set @s xp 0
    scoreboard players set @s xp_next 50
    scoreboard players set @s hp 70
    scoreboard players set @s mp 50
    scoreboard players set @s BaseHP 70
    scoreboard players set @s BaseMP 50
    scoreboard players set @s BaseHPRegen 25
    scoreboard players set @s BaseMPRegen 25
    scoreboard players set @s BaseAD 3
    scoreboard players set @s BaseAP 0
    scoreboard players set @s BaseDEX 0
    scoreboard players set @s BaseDEF 0
    scoreboard players set @s BaseSPD 0
    scoreboard players set @s BaseCRT 0
    scoreboard players set @s BaseLUK 0
    scoreboard players set @s cdr 0
    function player:status/update/_
    function player:class/warrior/on_levelup