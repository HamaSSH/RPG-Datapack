#> ui:open
# UIを開いた際の処理

# UI開き中のタグ付け
    tag @s add UIOpen

# UI閉じ検知用の処理
    execute if predicate player:armor/head run tag @s add CloseDetector
    execute unless entity @s[tag=CloseDetector] run item replace entity @s armor.head with nautilus_shell
    function ui:close_detector/add