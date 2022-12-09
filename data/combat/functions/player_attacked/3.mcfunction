# モブを絞り込む (4桁目の1/0)
    execute if entity @a[tag=this,advancements={combat:player_attacked={MobID3.0=true}}] if entity @s[tag=MobID3.0] run function combat:player_attacked/2
    execute if entity @a[tag=this,advancements={combat:player_attacked={MobID3.1=true}}] if entity @s[tag=MobID3.1] run function combat:player_attacked/2