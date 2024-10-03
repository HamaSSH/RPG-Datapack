#> player:menu/clicked/1/class/hunter
# パッシブスキル

tag @s remove NoClass
data modify storage player: menu.color set value '{"text": "","color": "#A9E07D","italic": false}'

execute if score @s LVL matches 5.. run data modify storage player: menu.passive1.name set value '"熟練の弓使い"'
execute if score @s LVL matches 5.. run data modify storage player: menu.passive1.desc set value '"・左クリックで矢を放つことができる"'
execute if score @s LVL matches 20.. run data modify storage player: menu.passive1.desc set value '"・左クリック矢＋矢が更に敵を貫通"'
execute if score @s LVL matches 35.. run data modify storage player: menu.passive1.desc set value '"・左クリック矢＋貫通強化＋複数矢"'
execute if score @s LVL matches 5.. run data modify storage player: menu.passive1.line set value '"　　　　　　"'
execute if score @s LVL matches 5.. run data modify storage player: menu.passive1.rank set value '"I"'
execute if score @s LVL matches 20.. run data modify storage player: menu.passive1.rank set value '"II"'
execute if score @s LVL matches 35.. run data modify storage player: menu.passive1.rank set value '"III"'
execute if score @s LVL matches 50.. run data modify storage player: menu.passive1.rank set value '"IV"'

execute if score @s LVL matches 10.. run data modify storage player: menu.passive2.name set value '"吸命の秘技"'
execute if score @s LVL matches 10.. run data modify storage player: menu.passive2.desc set value '"・物理/器用ダメージをＨＰとして回復"'
execute if score @s LVL matches 10.. run data modify storage player: menu.passive2.line set value '"　　　　　　　"'
execute if score @s LVL matches 10.. run data modify storage player: menu.passive2.rank set value '"I"'
execute if score @s LVL matches 25.. run data modify storage player: menu.passive2.rank set value '"II"'
execute if score @s LVL matches 40.. run data modify storage player: menu.passive2.rank set value '"III"'
execute if score @s LVL matches 50.. run data modify storage player: menu.passive2.rank set value '"IV"'

execute if score @s LVL matches 15.. run data modify storage player: menu.passive3.name set value '"疾風の舞"'
execute if score @s LVL matches 15.. run data modify storage player: menu.passive3.desc set value '"・素早さに応じて攻撃速度ＵＰ"'
execute if score @s LVL matches 15.. run data modify storage player: menu.passive3.line set value '"　　　　　　　　"'
execute if score @s LVL matches 15.. run data modify storage player: menu.passive3.rank set value '"I"'
execute if score @s LVL matches 30.. run data modify storage player: menu.passive3.rank set value '"II"'
execute if score @s LVL matches 40.. run data modify storage player: menu.passive3.rank set value '"III"'
execute if score @s LVL matches 50.. run data modify storage player: menu.passive3.rank set value '"IV"'

execute if score @s LVL matches 20.. run data modify storage player: menu.passive4.name set value '"会心の極意"'
execute if score @s LVL matches 20.. run data modify storage player: menu.passive4.desc set value '"・会心時にステータス大幅ＵＰ"'
execute if score @s LVL matches 20.. run data modify storage player: menu.passive4.line set value '"　　　　　　　"'
execute if score @s LVL matches 20.. run data modify storage player: menu.passive4.rank set value '"I"'
execute if score @s LVL matches 35.. run data modify storage player: menu.passive4.rank set value '"II"'
execute if score @s LVL matches 45.. run data modify storage player: menu.passive4.rank set value '"III"'
execute if score @s LVL matches 50.. run data modify storage player: menu.passive4.rank set value '"IV"'