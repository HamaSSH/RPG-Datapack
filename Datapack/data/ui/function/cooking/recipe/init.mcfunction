#> ui:cooking/recipe/init
# 料理レシピの初期化

data modify storage recipe:dish Data set value []
data modify storage recipe:dish Data append value {ingredients:{id1:[wheat],id2:[wheat],id3:[wheat]},result:{id:"bread"}}
data modify storage recipe:dish Data append value {ingredients:{id1:[wheat],id2:[cocoa_beans],id3:[0]},result:{id:"cookie"}}
data modify storage recipe:dish Data append value {ingredients:{id1:[wheat],id2:[cocoa_beans],id3:[cocoa_beans]},result:{id:"chocolate_cookie"}}
data modify storage recipe:dish Data append value {ingredients:{id1:[apple],id2:[honeycomb],id3:[0]},result:{id:"honey_apple"}}
data modify storage recipe:dish Data append value {ingredients:{id1:[sweet_berries],id2:[glow_berries],id3:[wheat]},result:{id:"berry_cake"}}
data modify storage recipe:dish Data append value {ingredients:{id1:[carrot],id2:[potato],id3:[pumpkin_slice]},result:{id:"vegetable_soup"}}
data modify storage recipe:dish Data append value {ingredients:{id1:[chicken],id2:[carrot],id3:[potato]},result:{id:"chicken_stew"}}
data modify storage recipe:dish Data append value {ingredients:{id1:[blue_berries],id2:[ice_cube],id3:[0]},result:{id:"frozen_berries"}}
data modify storage recipe:dish Data append value {ingredients:{id1:[beef],id2:[red_shroom],id3:[brown_shroom]},result:{id:"grilled_steak"}}