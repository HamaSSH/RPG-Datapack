# モブを絞り込む (3桁目の1/0)
    execute if entity @a[tag=this,advancements={attack:player_hurt={MobID2.0=true}}] if entity @s[tag=MobID2.0] run function attack:player_hurt/1
    execute if entity @a[tag=this,advancements={attack:player_hurt={MobID2.1=true}}] if entity @s[tag=MobID2.1] run function attack:player_hurt/1