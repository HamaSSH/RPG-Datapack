# モブを絞り込む (5桁目の1/0)
    execute if entity @a[tag=this,advancements={attack:player_attacked={MobID4.0=true}}] if entity @s[tag=MobID4.0] run function attack:player_attacked/3
    execute if entity @a[tag=this,advancements={attack:player_attacked={MobID4.1=true}}] if entity @s[tag=MobID4.1] run function attack:player_attacked/3