#> player:menu/clicked/1/class/paladin
# パッシブスキル

tag @s remove NoClass
data modify storage player: menu.color set value '{"text": "","color": "#81DDE1","italic": false}'

execute if score @s LVL matches 5.. run data modify storage player: menu.passive1.name set value '"リファイン"'
execute if score @s LVL matches 5.. run data modify storage player: menu.passive1.desc set value '"・受けるバフの強化＋デバフの弱化"'
execute if score @s LVL matches 35.. run data modify storage player: menu.passive1.desc set value '"・受けるバフの強化＋デバフの無効化"'
execute if score @s LVL matches 5.. run data modify storage player: menu.passive1.line set value '"　　　　　　　"'
execute if score @s LVL matches 5.. run data modify storage player: menu.passive1.rank set value '"I"'
execute if score @s LVL matches 20.. run data modify storage player: menu.passive1.rank set value '"II"'
execute if score @s LVL matches 35.. run data modify storage player: menu.passive1.rank set value '"III"'
execute if score @s LVL matches 50.. run data modify storage player: menu.passive1.rank set value '"IV"'

execute if score @s LVL matches 10.. run data modify storage player: menu.passive2.name set value '"スペルスラスト"'
execute if score @s LVL matches 10.. run data modify storage player: menu.passive2.desc set value '"・物理攻撃で追加魔法ダメージを与える"'
execute if score @s LVL matches 10.. run data modify storage player: menu.passive2.line set value '"　　　　　"'
execute if score @s LVL matches 10.. run data modify storage player: menu.passive2.rank set value '"I"'
execute if score @s LVL matches 25.. run data modify storage player: menu.passive2.rank set value '"II"'
execute if score @s LVL matches 40.. run data modify storage player: menu.passive2.rank set value '"III"'
execute if score @s LVL matches 50.. run data modify storage player: menu.passive2.rank set value '"IV"'

execute if score @s LVL matches 15.. run data modify storage player: menu.passive3.name set value '"グレイスシールド"'
execute if score @s LVL matches 15.. run data modify storage player: menu.passive3.desc set value '"・被ダメージを半減する盾をチャージ"'
execute if score @s LVL matches 15.. run data modify storage player: menu.passive3.line set value '"　　　　"'
execute if score @s LVL matches 15.. run data modify storage player: menu.passive3.rank set value '"I"'
execute if score @s LVL matches 30.. run data modify storage player: menu.passive3.rank set value '"II"'
execute if score @s LVL matches 40.. run data modify storage player: menu.passive3.rank set value '"III"'
execute if score @s LVL matches 50.. run data modify storage player: menu.passive3.rank set value '"IV"'

execute if score @s LVL matches 20.. run data modify storage player: menu.passive4.name set value '"エンハンスメント"'
execute if score @s LVL matches 20.. run data modify storage player: menu.passive4.desc set value '"・バフを受けている間ステータスＵＰ"'
execute if score @s LVL matches 20.. run data modify storage player: menu.passive4.line set value '"　　　　"'
execute if score @s LVL matches 20.. run data modify storage player: menu.passive4.rank set value '"I"'
execute if score @s LVL matches 35.. run data modify storage player: menu.passive4.rank set value '"II"'
execute if score @s LVL matches 45.. run data modify storage player: menu.passive4.rank set value '"III"'
execute if score @s LVL matches 50.. run data modify storage player: menu.passive4.rank set value '"IV"'