##########
#>
#

# mainhand → armor.head
    item replace entity @s armor.head from entity @s weapon.mainhand
    playsound item.armor.equip_leather master @s ~ ~ ~ 1 1
# mainhandをairに
    item replace entity @s weapon.mainhand with air