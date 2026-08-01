#> asset:mob/dummy/summon
# ダミーモブの召喚

summon skeleton ~ ~ ~ {NoAI:1b,Silent:1b,PersistenceRequired:1b,Tags:["Enemy","MobInit"],CustomNameVisible:1b,Health:1024f,attributes:[{id:"max_health",base:1024}],active_effects:[{id:"resistance",amplifier:4,duration:-1,show_particles:false}],data:{id:"dummy",name:"サンドバッグ",name_char:6,hp:1000,dmg:1,def:0,lvl:1,exp:0,gold:0,triggers:["summon","tick","attack","hurt","death"]},equipment:{saddle:{id:"saddle",count:1,components:{enchantments:{"mob:trigger/on_hurt":1,"mob:trigger/on_attack":1}}}}}
execute as @e[type=skeleton,tag=MobInit,distance=..0.01,limit=1] run function mob:summon/init
