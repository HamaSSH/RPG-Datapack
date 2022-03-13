# 踏み荒らさせないぞ
    effect give @s levitation 1 250 true
    execute if entity @s[advancements={core:farmland={y-0=true}}] run effect clear @s levitation
    # execute if entity @s[advancements={core:farmland={y-0=false}}] run say 踏み
# リセット
    advancement revoke @s only core:farmland