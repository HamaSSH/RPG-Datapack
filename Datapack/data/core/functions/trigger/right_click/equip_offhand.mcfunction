##########
#>
#

# offhand → armor.head
    item replace entity @s armor.head from entity @s weapon.offhand
    playsound item.armor.equip_leather master @s ~ ~ ~ 1 1
# offhandをairに
    item replace entity @s weapon.offhand with air