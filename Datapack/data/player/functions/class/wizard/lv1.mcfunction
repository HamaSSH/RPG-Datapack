##########
#>
#

# 初期ステータス
    scoreboard players set @s level 1
    scoreboard players set @s WizardLVL 1
    scoreboard players set @s SkillLevel 1
    scoreboard players set @s xp 0
    scoreboard players set @s xp_next 50
    scoreboard players set @s hp 50
    scoreboard players set @s mp 80
    scoreboard players set @s BaseHP 50
    scoreboard players set @s BaseMP 80
    scoreboard players set @s BaseHPRegen 25
    scoreboard players set @s BaseMPRegen 25
    scoreboard players set @s BaseAD 1
    scoreboard players set @s BaseAP 3
    scoreboard players set @s BaseDEX 0
    scoreboard players set @s BaseDEF 0
    scoreboard players set @s BaseSPD 0
    scoreboard players set @s BaseCRT 0
    scoreboard players set @s BaseLUK 0
    scoreboard players set @s cdr 0
    function player:status/update/_
    function player:class/wizard/on_levelup