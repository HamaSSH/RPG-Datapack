# 防御、素早さ
  execute if score $BonusDEF Temporary matches 0.. if score $BonusSPD Temporary matches 0.. run tellraw @s [" \uE248 ",{"text":"防御力： ","color":"#4FB9FF","hoverEvent":{"action":"show_text","value":[{"text":"受けたダメージを軽減する。\n"},{"text":"防御力","color":"#4FB9FF"},{"text":": ","color":"white"},{"score":{"objective":"def_base","name":"@s"},"color":"white"},{"text":"(","color":"gray"},{"text":"+","color":"#ABFF8C"},{"score":{"objective":"Temporary","name":"$BonusDEF"},"color":"#ABFF8C"},{"text":") max:200\n","color":"gray"},{"text":"▸ ダメージ軽減率","color":"gray"},{"text":": ","color":"white"},{"score":{"objective":"Temporary","name":"$ReductionB"},"color":"white"},{"text":"％","color":"gray","bold":true}]}},{"score":{"name":"@s","objective":"def"},"bold":true}," \uE249 ",{"text":"素早さ： ","color":"#ABF4FF","hoverEvent":{"action":"show_text","value":[{"text":"動きが素早くなる。\n"},{"text":"素早さ","color":"#ABF4FF"},{"text":": ","color":"white"},{"score":{"objective":"spd_base","name":"@s"},"color":"white"},{"text":"(","color":"gray"},{"text":"+","color":"#ABFF8C"},{"score":{"objective":"Temporary","name":"$BonusSPD"},"color":"#ABFF8C"},{"text":") max:200\n","color":"gray"},{"text":"▸ 足の速さ","color":"gray"},{"text":": +"},{"score":{"name":"$SpeedInt","objective":"Temporary"}},{"text":"."},{"score":{"name":"$SpeedDec","objective":"Temporary"}},{"text":"％\n","color":"gray"},{"text":"▸ 攻撃回避率","color":"gray"},{"text":": "},{"score":{"name":"$Dodge","objective":"Temporary"}},{"text":"％","color":"gray"}]}},{"score":{"name":"@s","objective":"spd"},"bold":true}]
  execute unless score $BonusDEF Temporary matches 0.. if score $BonusSPD Temporary matches 0.. run tellraw @s [" \ueff8 ",{"text":"防御力： ","color":"#4FB9FF","hoverEvent":{"action":"show_text","value":[{"text":"受けたダメージを軽減する。\n"},{"text":"防御力","color":"#4FB9FF"},{"text":": ","color":"white"},{"score":{"objective":"def_base","name":"@s"},"color":"white"},{"text":"(","color":"gray"},{"score":{"objective":"Temporary","name":"$BonusDEF"},"color":"#FF4D4D"},{"text":") max:200\n","color":"gray"},{"text":"▸ ダメージ軽減率","color":"gray"},{"text":": ","color":"white"},{"score":{"objective":"Temporary","name":"$ReductionB"},"color":"white"},{"text":"％","color":"gray","bold":true}]}},{"score":{"name":"@s","objective":"def"},"bold":true}," \ueff9 ",{"text":"素早さ： ","color":"#ABF4FF","hoverEvent":{"action":"show_text","value":[{"text":"動きが素早くなる。\n"},{"text":"素早さ","color":"#ABF4FF"},{"text":": ","color":"white"},{"score":{"objective":"spd_base","name":"@s"},"color":"white"},{"text":"(","color":"gray"},{"text":"+","color":"#ABFF8C"},{"score":{"objective":"Temporary","name":"$BonusSPD"},"color":"#ABFF8C"},{"text":") max:200\n","color":"gray"},{"text":"▸ 足の速さ","color":"gray"},{"text":": +"},{"score":{"name":"$SpeedInt","objective":"Temporary"}},{"text":"."},{"score":{"name":"$SpeedDec","objective":"Temporary"}},{"text":"％\n","color":"gray"},{"text":"▸ 攻撃回避率","color":"gray"},{"text":": "},{"score":{"name":"$Dodge","objective":"Temporary"}},{"text":"％","color":"gray"}]}},{"score":{"name":"@s","objective":"spd"},"bold":true}]
  execute if score $BonusDEF Temporary matches 0.. unless score $BonusSPD Temporary matches 0.. run tellraw @s [" \ueff8 ",{"text":"防御力： ","color":"#4FB9FF","hoverEvent":{"action":"show_text","value":[{"text":"受けたダメージを軽減する。\n"},{"text":"防御力","color":"#4FB9FF"},{"text":": ","color":"white"},{"score":{"objective":"def_base","name":"@s"},"color":"white"},{"text":"(","color":"gray"},{"text":"+","color":"#ABFF8C"},{"score":{"objective":"Temporary","name":"$BonusDEF"},"color":"#ABFF8C"},{"text":") max:200\n","color":"gray"},{"text":"▸ ダメージ軽減率","color":"gray"},{"text":": ","color":"white"},{"score":{"objective":"Temporary","name":"$ReductionB"},"color":"white"},{"text":"％","color":"gray","bold":true}]}},{"score":{"name":"@s","objective":"def"},"bold":true}," \ueff9 ",{"text":"素早さ： ","color":"#ABF4FF","hoverEvent":{"action":"show_text","value":[{"text":"動きが素早くなる。\n"},{"text":"素早さ","color":"#ABF4FF"},{"text":": ","color":"white"},{"score":{"objective":"spd_base","name":"@s"},"color":"white"},{"text":"(","color":"gray"},{"score":{"objective":"Temporary","name":"$BonusSPD"},"color":"#FF4D4D"},{"text":") max:200\n","color":"gray"},{"text":"▸ 足の速さ","color":"gray"},{"text":": +"},{"score":{"name":"$SpeedInt","objective":"Temporary"}},{"text":"."},{"score":{"name":"$SpeedDec","objective":"Temporary"}},{"text":"％\n","color":"gray"},{"text":"▸ 攻撃回避率","color":"gray"},{"text":": "},{"score":{"name":"$Dodge","objective":"Temporary"}},{"text":"％","color":"gray"}]}},{"score":{"name":"@s","objective":"spd"},"bold":true}]
  execute unless score $BonusDEF Temporary matches 0.. unless score $BonusSPD Temporary matches 0.. run tellraw @s [" \ueff8 ",{"text":"防御力： ","color":"#4FB9FF","hoverEvent":{"action":"show_text","value":[{"text":"受けたダメージを軽減する。\n"},{"text":"防御力","color":"#4FB9FF"},{"text":": ","color":"white"},{"score":{"objective":"def_base","name":"@s"},"color":"white"},{"text":"(","color":"gray"},{"score":{"objective":"Temporary","name":"$BonusDEF"},"color":"#FF4D4D"},{"text":") max:200\n","color":"gray"},{"text":"▸ ダメージ軽減率","color":"gray"},{"text":": ","color":"white"},{"score":{"objective":"Temporary","name":"$ReductionB"},"color":"white"},{"text":"％","color":"gray","bold":true}]}},{"score":{"name":"@s","objective":"def"},"bold":true}," \ueff9 ",{"text":"素早さ： ","color":"#ABF4FF","hoverEvent":{"action":"show_text","value":[{"text":"動きが素早くなる。\n"},{"text":"素早さ","color":"#ABF4FF"},{"text":": ","color":"white"},{"score":{"objective":"spd_base","name":"@s"},"color":"white"},{"text":"(","color":"gray"},{"score":{"objective":"Temporary","name":"$BonusSPD"},"color":"#FF4D4D"},{"text":") max:200\n","color":"gray"},{"text":"▸ 足の速さ","color":"gray"},{"text":": +"},{"score":{"name":"$SpeedInt","objective":"Temporary"}},{"text":"."},{"score":{"name":"$SpeedDec","objective":"Temporary"}},{"text":"％\n","color":"gray"},{"text":"▸ 攻撃回避率","color":"gray"},{"text":": "},{"score":{"name":"$Dodge","objective":"Temporary"}},{"text":"％","color":"gray"}]}},{"score":{"name":"@s","objective":"spd"},"bold":true}]