#> ui:open
# UIを開いた際の処理

# UI開き中のタグ付け
    tag @s add UIOpen

# UIの共通初期化処理
    execute anchored eyes positioned ~ ~1.1 ~ as @e[type=interaction,tag=UIInteraction,distance=..0.01,limit=1] run function ui:init

# UI閉じ検知用の処理
    execute unless predicate player:armor/helmet run item replace entity @s armor.head with nautilus_shell
    function ui:close_detector/add