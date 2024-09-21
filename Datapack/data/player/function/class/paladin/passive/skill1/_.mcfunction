#> player:class/paladin/passive/skill1/_
# スキルレベルごとの効果

execute if data storage player: buff{type:"positive"} run function player:class/paladin/passive/skill1/positive
execute if data storage player: buff{type:"negative"} run function player:class/paladin/passive/skill1/negative