#> ui:close
# UIを閉じた際の処理

# UI閉じ検知の後処理
    execute unless entity @s[tag=CloseDetector] run item replace entity @s armor.head with air
    execute if entity @s[tag=CloseDetector] run function ui:close_detector/remove

# 職業変更書見台
    execute if entity @s[tag=ClassLectern] run trigger ChangeClass set -1
    execute if entity @s[tag=ClassLectern] run tag @s remove ClassLectern

# リセット
    tag @s remove UIOpen
    advancement revoke @s only ui:close