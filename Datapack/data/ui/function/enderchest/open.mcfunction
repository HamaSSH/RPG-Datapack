#> ui:enderchest/open
# UIを開いた際の処理

# UI開き中のタグ付け
    tag @s add UsingUI
    tag @s add UsingEnderchest

# ページの初期化
    scoreboard players add @s UIPage 0
    function ui:enderchest/page/update

# UI閉じ検知用の処理
    execute unless predicate player:armor/helmet run item replace entity @s armor.head with nautilus_shell[item_model="resource:air"]
    item modify entity @s armor.head ui:close_detector/add

# リセット
    scoreboard players reset @s OpenEnderchest