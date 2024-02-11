#> player:combat/leftclick/summon
# 左クリック用エンティティの召喚

# 全方位を囲む #TODO: チェスト/メニューGUIを開かせたい時は召喚しない
    execute anchored eyes positioned ^ ^ ^ if block ~ ~ ~ #lib:air run function player:combat/leftclick/outside_block

# NoCollisionのブロック内にいる場合
    execute anchored eyes positioned ^ ^ ^ unless block ~ ~ ~ #lib:air run summon vex ~ ~-0.6 ~ {Silent:1b,NoAI:1b,Health:1024f,Team:"NoCollision",Tags:["AutoKill","LeftClick"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:10,show_particles:0b}],Attributes:[{Name:"generic.max_health",Base:1024}]}

# リセット
    advancement revoke @s only player:combat/leftclick/summon