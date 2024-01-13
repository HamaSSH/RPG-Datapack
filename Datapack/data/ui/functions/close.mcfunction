#> ui:close
# UIを閉じた際の処理

# UI閉じ検知の後処理
    execute unless entity @s[tag=CloseDetector] run item replace entity @s armor.head with air
    execute if entity @s[tag=CloseDetector] run function ui:close_detector/remove

# リセット
    advancement revoke @s only ui:close