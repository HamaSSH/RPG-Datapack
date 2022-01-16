# モブを絞り込む (6桁目の1/0)
  execute if entity @a[tag=this,advancements={attack:player_hurt={MobID5.0=true}}] if entity @s[tag=MobID5.0] run function attack:player_hurt/4
  execute if entity @a[tag=this,advancements={attack:player_hurt={MobID5.1=true}}] if entity @s[tag=MobID5.1] run function attack:player_hurt/4