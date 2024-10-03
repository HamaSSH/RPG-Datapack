#> player:menu/clicked/1/class/wizard
# パッシブスキル

tag @s remove NoClass
data modify storage player: menu.color set value '{"text": "","color": "#A486DA","italic": false}'

execute if score @s LVL matches 5.. run data modify storage player: menu.passive1.name set value '"アクセラレート"'
execute if score @s LVL matches 5.. run data modify storage player: menu.passive1.desc set value '"・魔導書のクールダウンの低減"'
execute if score @s LVL matches 5.. run data modify storage player: menu.passive1.line set value '"　　　　　"'
execute if score @s LVL matches 5.. run data modify storage player: menu.passive1.rank set value '"I"'
execute if score @s LVL matches 20.. run data modify storage player: menu.passive1.rank set value '"II"'
execute if score @s LVL matches 35.. run data modify storage player: menu.passive1.rank set value '"III"'
execute if score @s LVL matches 50.. run data modify storage player: menu.passive1.rank set value '"IV"'

execute if score @s LVL matches 10.. run data modify storage player: menu.passive2.name set value '"マナサージ"'
execute if score @s LVL matches 10.. run data modify storage player: menu.passive2.desc set value '"・一部魔法ダメージをＭＰとして回復"'
execute if score @s LVL matches 10.. run data modify storage player: menu.passive2.line set value '"　　　　　　　"'
execute if score @s LVL matches 10.. run data modify storage player: menu.passive2.rank set value '"I"'
execute if score @s LVL matches 25.. run data modify storage player: menu.passive2.rank set value '"II"'
execute if score @s LVL matches 40.. run data modify storage player: menu.passive2.rank set value '"III"'
execute if score @s LVL matches 50.. run data modify storage player: menu.passive2.rank set value '"IV"'

execute if score @s LVL matches 15.. run data modify storage player: menu.passive3.name set value '"エレメントフォーカス"'
execute if score @s LVL matches 15.. run data modify storage player: menu.passive3.desc set value '"・属性纏いの効果時間が増加する"'
execute if score @s LVL matches 30.. run data modify storage player: menu.passive3.desc set value '"・属性纏い時間ＵＰ＋ステータス上昇"'
execute if score @s LVL matches 40.. run data modify storage player: menu.passive3.desc set value '"・属性纏い効果＋効果時間＋ｽﾃｰﾀｽＵＰ"'
execute if score @s LVL matches 15.. run data modify storage player: menu.passive3.line set value '"　　"'
execute if score @s LVL matches 15.. run data modify storage player: menu.passive3.rank set value '"I"'
execute if score @s LVL matches 30.. run data modify storage player: menu.passive3.rank set value '"II"'
execute if score @s LVL matches 40.. run data modify storage player: menu.passive3.rank set value '"III"'
execute if score @s LVL matches 50.. run data modify storage player: menu.passive3.rank set value '"IV"'

execute if score @s LVL matches 20.. run data modify storage player: menu.passive4.name set value '"スペルエコー"'
execute if score @s LVL matches 20.. run data modify storage player: menu.passive4.desc set value '"・魔導書を確率で即再発動可能"'
execute if score @s LVL matches 20.. run data modify storage player: menu.passive4.line set value '"　　　　　　"'
execute if score @s LVL matches 20.. run data modify storage player: menu.passive4.rank set value '"I"'
execute if score @s LVL matches 35.. run data modify storage player: menu.passive4.rank set value '"II"'
execute if score @s LVL matches 45.. run data modify storage player: menu.passive4.rank set value '"III"'
execute if score @s LVL matches 50.. run data modify storage player: menu.passive4.rank set value '"IV"'