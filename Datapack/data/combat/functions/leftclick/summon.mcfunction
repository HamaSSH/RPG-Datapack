#> combat:leftclick/summon
# 左クリック用エンティティの召喚

# 全方位を囲む
    summon vex ~ ~1.7 ~ {Silent:1b,Team:"NoCollision",NoAI:1b,Health:1000f,Tags:["AutoKill","Timer","LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
    summon vex ~ ~0.4 ~ {Silent:1b,Team:"NoCollision",NoAI:1b,Health:1000f,Tags:["AutoKill","Timer","LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
    summon vex ~0.3 ~1 ~ {Silent:1b,Team:"NoCollision",NoAI:1b,Health:1000f,Tags:["AutoKill","Timer","LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
    summon vex ~-0.3 ~1 ~ {Silent:1b,Team:"NoCollision",NoAI:1b,Health:1000f,Tags:["AutoKill","Timer","LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
    summon vex ~ ~1 ~0.3 {Silent:1b,Team:"NoCollision",NoAI:1b,Health:1000f,Tags:["AutoKill","Timer","LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
    summon vex ~ ~1 ~-0.3 {Silent:1b,Team:"NoCollision",NoAI:1b,Health:1000f,Tags:["AutoKill","Timer","LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}
# NoCollisionのブロック内にいる場合
    execute anchored eyes positioned ^ ^ ^ if block ~ ~ ~ #lib:no_collision run summon vex ~ ~-0.6 ~ {Silent:1b,Team:"NoCollision",NoAI:1b,Health:1000f,Tags:["AutoKill","Timer","LeftClick"],Attributes:[{Name:"generic.max_health",Base:1000}]}

# リセット
    advancement revoke @s only combat:leftclick/summon