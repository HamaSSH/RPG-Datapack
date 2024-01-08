#> world:spawner/summon/random
# モブのエントリー数をもとに抽選する

$execute store result storage world: Spawner.Random int 1 run random value 0..$(Entry)