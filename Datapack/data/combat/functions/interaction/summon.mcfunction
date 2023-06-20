##########
#>
#

# チェスト/メニューGUIを開かせたい時は召喚しない
    execute if entity @e[tag=Container,distance=..5,sort=nearest,limit=1] run function combat:interaction/container
    execute if entity @e[type=villager,tag=NPC,distance=..5,sort=nearest,limit=1] anchored eyes positioned ^ ^ ^ run function combat:interaction/npc

# クリック検知用のInteraction
    execute unless entity @s[tag=DisableLC] unless entity @s[tag=RightClickBow] anchored eyes positioned ^ ^ ^ run summon interaction ~ ~-1 ~ {height:1.5f,width:0.6f,Tags:["LeftClick"]}
    # execute unless entity @s[tag=DisableLC] run summon interaction ~ ~0.2 ~0.15 {height:1.5f,width:0.15f,Tags:["LeftClick"]}
    # execute unless entity @s[tag=DisableLC] run summon interaction ~ ~0.2 ~-0.15 {height:1.5f,width:0.15f,Tags:["LeftClick"]}
    # execute unless entity @s[tag=DisableLC] run summon interaction ~0.15 ~0.2 ~ {height:1.5f,width:0.15f,Tags:["LeftClick"]}
    # execute unless entity @s[tag=DisableLC] run summon interaction ~-0.15 ~0.2 ~ {height:1.5f,width:0.15f,Tags:["LeftClick"]}
    # execute unless entity @s[tag=DisableLC] run summon interaction ~ ~1.65 ~ {height:0.01f,width:0.15f,Tags:["LeftClick"]}
    # execute unless entity @s[tag=DisableLC] run summon interaction ~ ~1.6 ~ {height:0.2f,width:0.15f,Tags:["LeftClick"]}
    # execute unless entity @s[tag=DisableLC] run summon interaction ~ ~1.2 ~ {height:0.01f,width:0.15f,Tags:["LeftClick"]}

# リセット
    tag @s remove DisableLC
    advancement revoke @s only combat:interaction/summon