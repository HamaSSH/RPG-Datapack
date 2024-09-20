#> player:class/paladin/passive/skill3/init
# タイマーのカウントを設定(初期化)

# スキルレベルごとにチャージ時間短縮 I=30秒｜II=27秒｜III=24秒｜IV=21秒
    scoreboard players operation $ShieldTimer Temporary = @s PassiveSkill3
    scoreboard players operation $ShieldTimer Temporary *= #-60 Constant
    scoreboard players set @s ShieldTimer 660
    scoreboard players operation @s ShieldTimer += $ShieldTimer Temporary

# リセット
    scoreboard players reset $ShieldTimer Temporary