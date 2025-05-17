#> lib:p_motion/summon_enchant
# Motion適用のためのエンチャント持ちエンティティ召喚

# 一時的にTPしたエンティティを戻す
    summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{id:"glass_bottle",components:{enchantments:{"lib:p_motion/tp":1}}},{},{}],Tags:["PostTP","PMotionAS"]}

# Y軸方向
    $summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,Silent:1b,ArmorItems:[{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/vertical1":$(y1),"lib:p_motion/vertical2":$(y2),"lib:p_motion/vertical3":$(y3)}}}},{},{},{}],Tags:["PMotionAS","$(y_sign)","v1_$(y1)","v2_$(y2)","v3_$(y3)"]}

# X軸方向
    $execute if data storage lib: motion{x_sign:"+"} run summon armor_stand ~-0.0001 ~ ~ {Marker:1b,Small:1b,Invisible:1b,Silent:1b,ArmorItems:[{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizontal1":$(x1),"lib:p_motion/horizontal2":$(x2),"lib:p_motion/horizontal3":$(x3)}}}},{},{},{}],Tags:["PMotionAS","+","h1_$(x1)","h2_$(x2)","h3_$(x3)"]}
    $execute if data storage lib: motion{x_sign:"+"} run summon armor_stand ~0.0001 ~ ~ {Marker:1b,Small:1b,Invisible:1b,Silent:1b,ArmorItems:[{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizontal1":$(x1),"lib:p_motion/horizontal2":$(x2),"lib:p_motion/horizontal3":$(x3)}}}},{},{},{}],Tags:["PMotionAS","-","h1_$(x1)","h2_$(x2)","h3_$(x3)"]}
    $execute if data storage lib: motion{x_sign:"-"} run summon armor_stand ~0.0001 ~ ~ {Marker:1b,Small:1b,Invisible:1b,Silent:1b,ArmorItems:[{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizontal1":$(x1),"lib:p_motion/horizontal2":$(x2),"lib:p_motion/horizontal3":$(x3)}}}},{},{},{}],Tags:["PMotionAS","+","h1_$(x1)","h2_$(x2)","h3_$(x3)"]}
    $execute if data storage lib: motion{x_sign:"-"} run summon armor_stand ~-0.0001 ~ ~ {Marker:1b,Small:1b,Invisible:1b,Silent:1b,ArmorItems:[{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizontal1":$(x1),"lib:p_motion/horizontal2":$(x2),"lib:p_motion/horizontal3":$(x3)}}}},{},{},{}],Tags:["PMotionAS","-","h1_$(x1)","h2_$(x2)","h3_$(x3)"]}

# Z軸方向
    $execute if data storage lib: motion{z_sign:"+"} run summon armor_stand ~ ~ ~-0.0001 {Marker:1b,Small:1b,Invisible:1b,Silent:1b,ArmorItems:[{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizontal1":$(z1),"lib:p_motion/horizontal2":$(z2),"lib:p_motion/horizontal3":$(z3)}}}},{},{},{}],Tags:["PMotionAS","+","h1_$(z1)","h2_$(z2)","h3_$(z3)"]}
    $execute if data storage lib: motion{z_sign:"+"} run summon armor_stand ~ ~ ~0.0001 {Marker:1b,Small:1b,Invisible:1b,Silent:1b,ArmorItems:[{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizontal1":$(z1),"lib:p_motion/horizontal2":$(z2),"lib:p_motion/horizontal3":$(z3)}}}},{},{},{}],Tags:["PMotionAS","-","h1_$(z1)","h2_$(z2)","h3_$(z3)"]}
    $execute if data storage lib: motion{z_sign:"-"} run summon armor_stand ~ ~ ~0.0001 {Marker:1b,Small:1b,Invisible:1b,Silent:1b,ArmorItems:[{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizontal1":$(z1),"lib:p_motion/horizontal2":$(z2),"lib:p_motion/horizontal3":$(z3)}}}},{},{},{}],Tags:["PMotionAS","+","h1_$(z1)","h2_$(z2)","h3_$(z3)"]}
    $execute if data storage lib: motion{z_sign:"-"} run summon armor_stand ~ ~ ~-0.0001 {Marker:1b,Small:1b,Invisible:1b,Silent:1b,ArmorItems:[{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizontal1":$(z1),"lib:p_motion/horizontal2":$(z2),"lib:p_motion/horizontal3":$(z3)}}}},{},{},{}],Tags:["PMotionAS","-","h1_$(z1)","h2_$(z2)","h3_$(z3)"]}

# 同じ位置のエンティティを一時的にTP
    summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,Silent:1b,ArmorItems:[{id:"glass_bottle",components:{enchantments:{"lib:p_motion/tp":1}}},{},{},{}],Tags:["PreTP","PMotionAS"]}