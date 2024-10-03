#> player:menu/clicked/1/class/fighter
# パッシブスキル

tag @s remove NoClass
data modify storage player: menu.color set value '{"text": "","color": "#E7AC72","italic": false}'

execute if score @s LVL matches 5.. run data modify storage player: menu.passive1.name set value '"強靭"'
execute if score @s LVL matches 5.. run data modify storage player: menu.passive1.desc set value '"・ノックバックや落下ダメージの低減"'
execute if score @s LVL matches 5.. run data modify storage player: menu.passive1.line set value '"　　　　　　　　　　"'
execute if score @s LVL matches 5.. run data modify storage player: menu.passive1.rank set value '"I"'
execute if score @s LVL matches 20.. run data modify storage player: menu.passive1.rank set value '"II"'
execute if score @s LVL matches 35.. run data modify storage player: menu.passive1.rank set value '"III"'
execute if score @s LVL matches 50.. run data modify storage player: menu.passive1.rank set value '"IV"'

execute if score @s LVL matches 10.. run data modify storage player: menu.passive2.name set value '"闘志"'
execute if score @s LVL matches 10.. run data modify storage player: menu.passive2.desc set value '"・体力が下がるほどステータスが上昇する"'
execute if score @s LVL matches 10.. run data modify storage player: menu.passive2.line set value '"　　　　　　　　　　"'
execute if score @s LVL matches 10.. run data modify storage player: menu.passive2.rank set value '"I"'
execute if score @s LVL matches 25.. run data modify storage player: menu.passive2.rank set value '"II"'
execute if score @s LVL matches 40.. run data modify storage player: menu.passive2.rank set value '"III"'
execute if score @s LVL matches 50.. run data modify storage player: menu.passive2.rank set value '"IV"'

execute if score @s LVL matches 15.. run data modify storage player: menu.passive3.name set value '"反撃"'
execute if score @s LVL matches 15.. run data modify storage player: menu.passive3.desc set value '"・被ダメージ時に反撃ダメージを与える"'
execute if score @s LVL matches 15.. run data modify storage player: menu.passive3.line set value '"　　　　　　　　　　"'
execute if score @s LVL matches 15.. run data modify storage player: menu.passive3.rank set value '"I"'
execute if score @s LVL matches 30.. run data modify storage player: menu.passive3.rank set value '"II"'
execute if score @s LVL matches 40.. run data modify storage player: menu.passive3.rank set value '"III"'
execute if score @s LVL matches 50.. run data modify storage player: menu.passive3.rank set value '"IV"'

execute if score @s LVL matches 20.. run data modify storage player: menu.passive4.name set value '"攻勢"'
execute if score @s LVL matches 20.. run data modify storage player: menu.passive4.desc set value '"・防御力に応じて物理攻撃力が上昇する"'
execute if score @s LVL matches 20.. run data modify storage player: menu.passive4.line set value '"　　　　　　　　　　"'
execute if score @s LVL matches 20.. run data modify storage player: menu.passive4.rank set value '"I"'
execute if score @s LVL matches 35.. run data modify storage player: menu.passive4.rank set value '"II"'
execute if score @s LVL matches 45.. run data modify storage player: menu.passive4.rank set value '"III"'
execute if score @s LVL matches 50.. run data modify storage player: menu.passive4.rank set value '"IV"'