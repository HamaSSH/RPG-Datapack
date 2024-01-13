#> ui:brewing/changed
# UI内で変更があった場合の処理

#

# 不要アイテムのclear
    clear @a[tag=UIOpen] #lib:every_item{UI:{ItemType:"Blank"}}
    clear @a[tag=UIOpen] #lib:every_item{UI:{ItemType:"Brew"}}