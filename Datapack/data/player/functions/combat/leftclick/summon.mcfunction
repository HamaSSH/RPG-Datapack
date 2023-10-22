#> player:combat/leftclick/summon
# 左クリック用エンティティの召喚

# 全方位を囲む
    summon vex ~ ~1.6201 ~ {Silent:1b,NoAI:1b,Health:1000f,Tags:["AutoKill","Timer","LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
    summon vex ~ ~0.8199 ~ {Silent:1b,NoAI:1b,Health:1000f,Tags:["AutoKill","Timer","LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
    summon vex ~0.2001 ~1 ~ {Silent:1b,NoAI:1b,Health:1000f,Tags:["AutoKill","Timer","LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
    summon vex ~-0.2001 ~1 ~ {Silent:1b,NoAI:1b,Health:1000f,Tags:["AutoKill","Timer","LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
    summon vex ~ ~1 ~0.2001 {Silent:1b,NoAI:1b,Health:1000f,Tags:["AutoKill","Timer","LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
    summon vex ~ ~1 ~-0.2001 {Silent:1b,NoAI:1b,Health:1000f,Tags:["AutoKill","Timer","LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
# NoCollisionのブロック内にいる場合
    execute anchored eyes positioned ^ ^ ^ unless block ~ ~ ~ #lib:air run summon vex ~ ~-0.6 ~ {Silent:1b,NoAI:1b,Health:1000f,Tags:["AutoKill","Timer","LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}

# リセット
    advancement revoke @s only player:combat/leftclick/summon