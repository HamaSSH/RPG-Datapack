# モブを絞り込む (9桁目の1/0)
    execute if entity @a[tag=this,advancements={attack:player_attacked={MobID8.0=true}}] if entity @s[tag=MobID8.0] run function attack:player_attacked/7
    execute if entity @a[tag=this,advancements={attack:player_attacked={MobID8.1=true}}] if entity @s[tag=MobID8.1] run function attack:player_attacked/7