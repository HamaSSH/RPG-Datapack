#> player:trigger/left_click
# 左クリック時の処理

playsound ui.button.click master @s ~ ~ ~ 0.2 0.8

# タグ付け
    tag @s add Attacker

# 与ダメージ計算
    scoreboard players operation $DmgDealt Temporary = @s STR
    execute if predicate player:hold_weapon/wand run scoreboard players operation $DmgDealt Temporary = @s INT
    execute if predicate player:hold_weapon/bow run scoreboard players operation $DmgDealt Temporary = @s DEX
    execute if predicate player:is_falling run function player:status/crt/check

# 武器ごとの処理
    # 弓
    # 短剣
        # execute if predicate player:hold_weapon/dagger run function player:combat
    # ハンマー
    # 槍
    # 刀剣
    # 杖

# リセット
    tag @s remove Attacker
    tag @s remove CriticalHit

# give @p warped_fungus_on_a_stick[piercing_weapon={min_reach:128,max_reach:128},swing_animation={type:stab,duration:20},enchantments={left_click:1},use_effects={speed_multiplier:1.0,can_sprint:true},attribute_modifiers=[{id:attack_speed,type:attack_speed,amount:-1.0,operation:add_value}],minimum_attack_charge=0.8,custom_data={weapon:dagger}]
# give @p warped_fungus_on_a_stick[piercing_weapon={min_reach:128,max_reach:128},enchantments={left_click:1},use_effects={speed_multiplier:1.0,can_sprint:true},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:-1.0,operation:"add_value"}],minimum_attack_charge=0.8,custom_data={weapon:"dagger"}]