#> asset:magic/5402.rock_spike/tick/spike/sfx
# スパイクの演出

particle block{block_state:"dirt"} ~ ~0.4 ~ 0.1 0.5 0.1 0.1 100 force
particle dust{color:[0.592,0.392,0.227],scale:2.5} ~ ~-0.1 ~ 0.3 0.6 0.3 0 50 force
particle dust{color:[0.592,0.392,0.227],scale:1.6} ~ ~0.25 ~ 0.2 0.8 0.2 0 100 force
particle dust{color:[0.592,0.392,0.227],scale:1} ~ ~0.5 ~ 0.1 1 0.1 0 200 force
particle enchant ~ ~0.5 ~ 0.2 1.2 0.2 0.1 50 force
playsound block.stem.step master @a ~ ~ ~ 0.3 0.9
playsound block.shroomlight.step master @a ~ ~ ~ 0.3 0.9
playsound entity.firework_rocket.blast_far master @a ~ ~ ~ 0.2 0.8
playsound resource:custom.weapon.spear master @a ~ ~ ~ 0.3 0.7