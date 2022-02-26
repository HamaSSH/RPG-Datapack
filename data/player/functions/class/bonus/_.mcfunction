# 職業のパッシブスキルによるステータス加算
  execute if predicate player:assassin/weapon run function player:class/bonus/ad
  execute if predicate player:fighter/weapon run function player:class/bonus/ad
  execute if predicate player:hunter/weapon run function player:class/bonus/dex
  execute if predicate player:knight/weapon run function player:class/bonus/ad
  execute if predicate player:warrior/weapon run function player:class/bonus/ad
  execute if predicate player:wizard/weapon run function player:class/bonus/ap