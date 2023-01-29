# 左クリックで発射できる弓矢の数表示
    execute if score @s LCArrow matches 0 run function core:actionbar/l/weapon/bow/quiver0
    execute if score @s LCArrow matches 1 run function core:actionbar/l/weapon/bow/quiver1
    execute if score @s LCArrow matches 2.. run function core:actionbar/l/weapon/bow/quiver2