#> ui:enchanting/open
# UIを開いた際の処理

# 共通処理
    function ui:open

# 音演出
    playsound block.chiseled_bookshelf.insert.enchanted master @s ~ ~ ~ 1 0.7
    playsound block.chiseled_bookshelf.insert.enchanted master @s ~ ~ ~ 1 1
    playsound entity.elder_guardian.curse master @s ~ ~ ~ 0.05 1.7
    playsound block.amethyst_block.chime master @s ~ ~ ~ 1 1.6

# リセット
    advancement revoke @s only ui:open/enchanting