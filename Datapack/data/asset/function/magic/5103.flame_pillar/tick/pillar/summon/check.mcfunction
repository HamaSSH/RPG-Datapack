#> asset:magic/5103.flame_pillar/tick/pillar/summon/check
# 召喚できるか(場所チェック)

execute if block ~ ~ ~ #lib:no_collision run function asset:magic/5103.flame_pillar/tick/pillar/summon/_
execute unless block ~ ~ ~ #lib:no_collision if block ~ ~1 ~ #lib:no_collision positioned ~ ~1 ~ run function asset:magic/5103.flame_pillar/tick/pillar/summon/_
execute unless block ~ ~1 ~ #lib:no_collision if block ~ ~2 ~ #lib:no_collision positioned ~ ~2 ~ run function asset:magic/5103.flame_pillar/tick/pillar/summon/_
execute unless block ~ ~2 ~ #lib:no_collision if block ~ ~3 ~ #lib:no_collision positioned ~ ~3 ~ run function asset:magic/5103.flame_pillar/tick/pillar/summon/_
execute unless block ~ ~3 ~ #lib:no_collision if block ~ ~4 ~ #lib:no_collision positioned ~ ~4 ~ run function asset:magic/5103.flame_pillar/tick/pillar/summon/_
execute unless block ~ ~4 ~ #lib:no_collision if block ~ ~5 ~ #lib:no_collision positioned ~ ~5 ~ run function asset:magic/5103.flame_pillar/tick/pillar/summon/_
execute unless block ~ ~5 ~ #lib:no_collision if block ~ ~6 ~ #lib:no_collision positioned ~ ~6 ~ run function asset:magic/5103.flame_pillar/tick/pillar/summon/_