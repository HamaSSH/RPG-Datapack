# モブを絞り込む (8桁目の1/0)
    execute if entity @a[tag=this,advancements={combat:player_attacked={MobID7.0=true}}] if entity @s[tag=MobID7.0] run function combat:player_attacked/6
    execute if entity @a[tag=this,advancements={combat:player_attacked={MobID7.1=true}}] if entity @s[tag=MobID7.1] run function combat:player_attacked/6