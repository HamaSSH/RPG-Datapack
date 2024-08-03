#> lib:p_motion/summon_enchant
# Motion適用のためのエンチャント持ちエンティティ召喚

# Y軸方向
    $execute if data storage lib: signs{Y:1} unless score $VectorY Temporary matches 0 at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Small:1,Invisible:1,ArmorItems:[{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/vertical1":$(y1)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/vertical2":$(y2)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/vertical3":$(y3)}}}},{}],Tags:["PMotion"]}
    $execute if data storage lib: signs{Y:-1} unless score $VectorY Temporary matches 0 at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Small:1,Invisible:1,ArmorItems:[{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/vertical1_":$(y1)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/vertical2_":$(y2)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/vertical3_":$(y3)}}}},{}],Tags:["PMotion"]}

# X軸方向
    $execute if data storage lib: signs{X:1} unless score $VectorX Temporary matches 0 at @s run summon minecraft:armor_stand ~-0.0001 ~ ~ {Marker:1,Small:1,Invisible:1,ArmorItems:[{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon1":$(x1)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon2":$(x2)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon3":$(x3)}}}},{}],Tags:["PMotion"]}
    $execute if data storage lib: signs{X:1} unless score $VectorX Temporary matches 0 at @s run summon minecraft:armor_stand ~0.0001 ~ ~ {Marker:1,Small:1,Invisible:1,ArmorItems:[{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon1_":$(x1)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon2_":$(x2)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon3_":$(x3)}}}},{}],Tags:["PMotion"]}
    $execute if data storage lib: signs{X:-1} unless score $VectorX Temporary matches 0 at @s run summon minecraft:armor_stand ~0.0001 ~ ~ {Marker:1,Small:1,Invisible:1,ArmorItems:[{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon1":$(x1)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon2":$(x2)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon3":$(x3)}}}},{}],Tags:["PMotion"]}
    $execute if data storage lib: signs{X:-1} unless score $VectorX Temporary matches 0 at @s run summon minecraft:armor_stand ~-0.0001 ~ ~ {Marker:1,Small:1,Invisible:1,ArmorItems:[{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon1_":$(x1)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon2_":$(x2)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon3_":$(x3)}}}},{}],Tags:["PMotion"]}

# Z軸方向
    $execute if data storage lib: signs{Z:1} unless score VectorZ Temporary matches 0 at @s run summon minecraft:armor_stand ~ ~ ~-0.0001 {Marker:1,Small:1,Invisible:1,ArmorItems:[{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon1":$(z1)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon2":$(z2)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon3":$(z3)}}}},{}],Tags:["PMotion"]}
    $execute if data storage lib: signs{Z:1} unless score VectorZ Temporary matches 0 at @s run summon minecraft:armor_stand ~ ~ ~0.0001 {Marker:1,Small:1,Invisible:1,ArmorItems:[{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon1_":$(z1)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon2_":$(z2)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon3_":$(z3)}}}},{}],Tags:["PMotion"]}
    $execute if data storage lib: signs{Z:-1} unless score VectorZ Temporary matches 0 at @s run summon minecraft:armor_stand ~ ~ ~0.0001 {Marker:1,Small:1,Invisible:1,ArmorItems:[{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon1":$(z1)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon2":$(z2)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon3":$(z3)}}}},{}],Tags:["PMotion"]}
    $execute if data storage lib: signs{Z:-1} unless score VectorZ Temporary matches 0 at @s run summon minecraft:armor_stand ~ ~ ~-0.0001 {Marker:1,Small:1,Invisible:1,ArmorItems:[{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon1_":$(z1)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon2_":$(z2)}}}},{id:"glass_bottle",components:{enchantments:{levels:{"lib:p_motion/horizon3_":$(z3)}}}},{}],Tags:["PMotion"]}