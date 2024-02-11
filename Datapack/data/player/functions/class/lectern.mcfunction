#> player:class/lectern
# 書見台を開いたことを検知

# 共通処理
    function ui:open

# 職業変更許可
    tag @s add ClassLectern
    scoreboard players enable @s ChangeClass

# リセット
    advancement revoke @s only player:class/lectern