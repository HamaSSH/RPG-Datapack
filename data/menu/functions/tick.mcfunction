### メニュー(GUI)関連の#tick

# それぞれの#tick呼び出し
    execute if predicate menu:brewing run function menu:brewing/_
    execute if predicate menu:cooking run function menu:cooking/
    execute if predicate menu:crafting run function menu:crafting/
    execute if predicate menu:upgrade run function menu:upgrade/
# メニューを閉じたことの検知(ESCクリック検知は出来ない;;)
    execute if entity @s[tag=Menu] run function menu:close
# 他プレイヤーのチェストトロッコ覗き防止(ちょっとガバ)
    execute if predicate menu:prevent run summon magma_cube ~ ~1.2 ~ {PortalCooldown:1,Silent:1b,DeathLootTable:"none",NoAI:1b,Health:1000f,Size:0,Tags:["MenuInit"],Attributes:[{Name:"generic.max_health",Base:1000}]}
# 開かれなかったGUIのkill
    execute as @e[tag=MenuInit] if data entity @s {PortalCooldown:0} run function menu:kill