# モブを絞り込む (1桁目の1/0)
    execute if entity @a[tag=this,advancements={combat:player_hurt={MobID0.0=true}}] if entity @s[tag=MobID0.0] run function combat:player_hurt/detected
    execute if entity @a[tag=this,advancements={combat:player_hurt={MobID0.1=true}}] if entity @s[tag=MobID0.1] run function combat:player_hurt/detected