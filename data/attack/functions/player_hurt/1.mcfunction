# モブを絞り込む (2桁目の1/0)
    execute if entity @a[tag=this,advancements={attack:player_hurt={MobID1.0=true}}] if entity @s[tag=MobID1.0] run function attack:player_hurt/0
    execute if entity @a[tag=this,advancements={attack:player_hurt={MobID1.1=true}}] if entity @s[tag=MobID1.1] run function attack:player_hurt/0