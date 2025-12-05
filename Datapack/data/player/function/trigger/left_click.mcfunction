#> player:trigger/left_click
# 左クリック時の処理

playsound ui.button.click master @s ~ ~ ~ 0.2 0.8

# チャージ率の判定の検討

# /give @s warped_fungus_on_a_stick[piercing_weapon={min_reach:128,max_reach:128,dismounts:false},enchantments={"left_click":1},use_effects={can_sprint:true,speed_multiplier:1.0},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:-1.0,operation:"add_value"}]]