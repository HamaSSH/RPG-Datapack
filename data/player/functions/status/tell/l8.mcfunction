# 会心、運
  execute if score $BonusCRT Temporary matches 0.. if score $BonusLUK Temporary matches 0.. run tellraw @s [" \uE24A ",{"text":"会心： ","color":"#FF87F7","hoverEvent":{"action":"show_text","value":[{"text":"攻撃時のｸﾘﾃｨｶﾙﾋｯﾄ率。\n"},{"text":"会心","color":"#FF87F7"},{"text":": ","color":"white"},{"score":{"objective":"crt_base","name":"@s"},"color":"white"},{"text":"(","color":"gray"},{"text":"+","color":"#ABFF8C"},{"score":{"objective":"Temporary","name":"$BonusCRT"},"color":"#ABFF8C"},{"text":") max:200\n","color":"gray"},{"text":"▸ 会心率","color":"gray"},{"text":": "},{"score":{"name":"$CrtChance","objective":"Temporary"}},{"text":"％\n","color":"gray"},{"text":"▸ 攻撃倍率","color":"gray"},{"text":": +"},{"score":{"name":"$CrtMultiplier","objective":"Temporary"}},{"text":"％","color":"gray"}]}},{"score":{"name":"@s","objective":"crt"},"bold":true}," \uE24B ",{"text":"運： ","color":"#B5FFB0","hoverEvent":{"action":"show_text","value":[{"text":"幸運になり恩恵が得られる。\n"},{"text":"運","color":"#B5FFB0"},{"text":": ","color":"white"},{"score":{"objective":"luk_base","name":"@s"},"color":"white"},{"text":"(","color":"gray"},{"text":"+","color":"#ABFF8C"},{"score":{"objective":"Temporary","name":"$BonusLUK"},"color":"#ABFF8C"},{"text":") max:200\n","color":"gray"},{"text":"▸ ゴールドボーナス","color":"gray"},{"text":": +"},{"score":{"name":"$BonusGold","objective":"Temporary"}},{"text":"％\n","color":"gray"},{"text":"▸ 経験値ボーナス","color":"gray"},{"text":": +"},{"score":{"name":"$BonusXP","objective":"Temporary"}},{"text":"％","color":"gray"}]}},{"score":{"name":"@s","objective":"luk"},"bold":true}]
  execute unless score $BonusCRT Temporary matches 0.. if score $BonusLUK Temporary matches 0.. run tellraw @s [" \ueffa ",{"text":"会心： ","color":"#FF87F7","hoverEvent":{"action":"show_text","value":[{"text":"攻撃時のｸﾘﾃｨｶﾙﾋｯﾄ率。\n"},{"text":"会心","color":"#FF87F7"},{"text":": ","color":"white"},{"score":{"objective":"crt_base","name":"@s"},"color":"white"},{"text":"(","color":"gray"},{"score":{"objective":"Temporary","name":"$BonusCRT"},"color":"#FF4D4D"},{"text":") max:200\n","color":"gray"},{"text":"▸ 会心率","color":"gray"},{"text":": "},{"score":{"name":"$CrtChance","objective":"Temporary"}},{"text":"％\n","color":"gray"},{"text":"▸ 攻撃倍率","color":"gray"},{"text":": +"},{"score":{"name":"$CrtMultiplier","objective":"Temporary"}},{"text":"％","color":"gray"}]}},{"score":{"name":"@s","objective":"crt"},"bold":true}," \ueffb ",{"text":"運： ","color":"#B5FFB0","hoverEvent":{"action":"show_text","value":[{"text":"幸運になり恩恵が得られる。\n"},{"text":"運","color":"#B5FFB0"},{"text":": ","color":"white"},{"score":{"objective":"luk_base","name":"@s"},"color":"white"},{"text":"(","color":"gray"},{"text":"+","color":"#ABFF8C"},{"score":{"objective":"Temporary","name":"$BonusLUK"},"color":"#ABFF8C"},{"text":") max:200\n","color":"gray"},{"text":"▸ ゴールドボーナス","color":"gray"},{"text":": +"},{"score":{"name":"$BonusGold","objective":"Temporary"}},{"text":"％\n","color":"gray"},{"text":"▸ 経験値ボーナス","color":"gray"},{"text":": +"},{"score":{"name":"$BonusXP","objective":"Temporary"}},{"text":"％","color":"gray"}]}},{"score":{"name":"@s","objective":"luk"},"bold":true}]
  execute if score $BonusCRT Temporary matches 0.. unless score $BonusLUK Temporary matches 0.. run tellraw @s [" \ueffa ",{"text":"会心： ","color":"#FF87F7","hoverEvent":{"action":"show_text","value":[{"text":"攻撃時のｸﾘﾃｨｶﾙﾋｯﾄ率。\n"},{"text":"会心","color":"#FF87F7"},{"text":": ","color":"white"},{"score":{"objective":"crt_base","name":"@s"},"color":"white"},{"text":"(","color":"gray"},{"text":"+","color":"#ABFF8C"},{"score":{"objective":"Temporary","name":"$BonusCRT"},"color":"#ABFF8C"},{"text":") max:200\n","color":"gray"},{"text":"▸ 会心率","color":"gray"},{"text":": "},{"score":{"name":"$CrtChance","objective":"Temporary"}},{"text":"％\n","color":"gray"},{"text":"▸ 攻撃倍率","color":"gray"},{"text":": +"},{"score":{"name":"$CrtMultiplier","objective":"Temporary"}},{"text":"％","color":"gray"}]}},{"score":{"name":"@s","objective":"crt"},"bold":true}," \ueffb ",{"text":"運： ","color":"#B5FFB0","hoverEvent":{"action":"show_text","value":[{"text":"幸運になり恩恵が得られる。\n"},{"text":"運","color":"#B5FFB0"},{"text":": ","color":"white"},{"score":{"objective":"luk_base","name":"@s"},"color":"white"},{"text":"(","color":"gray"},{"score":{"objective":"Temporary","name":"$BonusLUK"},"color":"#FF4D4D"},{"text":") max:200\n","color":"gray"},{"text":"▸ ゴールドボーナス","color":"gray"},{"text":": +"},{"score":{"name":"$BonusGold","objective":"Temporary"}},{"text":"％\n","color":"gray"},{"text":"▸ 経験値ボーナス","color":"gray"},{"text":": +"},{"score":{"name":"$BonusXP","objective":"Temporary"}},{"text":"％","color":"gray"}]}},{"score":{"name":"@s","objective":"luk"},"bold":true}]
  execute unless score $BonusCRT Temporary matches 0.. unless score $BonusLUK Temporary matches 0.. run tellraw @s [" \ueffa ",{"text":"会心： ","color":"#FF87F7","hoverEvent":{"action":"show_text","value":[{"text":"攻撃時のｸﾘﾃｨｶﾙﾋｯﾄ率。\n"},{"text":"会心","color":"#FF87F7"},{"text":": ","color":"white"},{"score":{"objective":"crt_base","name":"@s"},"color":"white"},{"text":"(","color":"gray"},{"score":{"objective":"Temporary","name":"$BonusCRT"},"color":"#FF4D4D"},{"text":") max:200\n","color":"gray"},{"text":"▸ 会心率","color":"gray"},{"text":": "},{"score":{"name":"$CrtChance","objective":"Temporary"}},{"text":"％\n","color":"gray"},{"text":"▸ 攻撃倍率","color":"gray"},{"text":": +"},{"score":{"name":"$CrtMultiplier","objective":"Temporary"}},{"text":"％","color":"gray"}]}},{"score":{"name":"@s","objective":"crt"},"bold":true}," \ueffb ",{"text":"運： ","color":"#B5FFB0","hoverEvent":{"action":"show_text","value":[{"text":"幸運になり恩恵が得られる。\n"},{"text":"運","color":"#B5FFB0"},{"text":": ","color":"white"},{"score":{"objective":"luk_base","name":"@s"},"color":"white"},{"text":"(","color":"gray"},{"score":{"objective":"Temporary","name":"$BonusLUK"},"color":"#FF4D4D"},{"text":") max:200\n","color":"gray"},{"text":"▸ ゴールドボーナス","color":"gray"},{"text":": +"},{"score":{"name":"$BonusGold","objective":"Temporary"}},{"text":"％\n","color":"gray"},{"text":"▸ 経験値ボーナス","color":"gray"},{"text":": +"},{"score":{"name":"$BonusXP","objective":"Temporary"}},{"text":"％","color":"gray"}]}},{"score":{"name":"@s","objective":"luk"},"bold":true}]