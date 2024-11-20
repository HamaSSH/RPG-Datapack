#> ui:cooking/recipe/get
# 料理レシピの適合

$data modify storage ui: Result.id set from storage recipe:dish Data[{ingredients:{id1:[$(ingredient1)],id2:[$(ingredient2)],id3:[$(ingredient3)]}}].result.id
$execute unless data storage ui: Result.id run data modify storage ui: Result.id set from storage recipe:dish Data[{ingredients:{id1:[$(ingredient1)],id3:[$(ingredient2)],id2:[$(ingredient3)]}}].result.id
$execute unless data storage ui: Result.id run data modify storage ui: Result.id set from storage recipe:dish Data[{ingredients:{id2:[$(ingredient1)],id1:[$(ingredient2)],id3:[$(ingredient3)]}}].result.id
$execute unless data storage ui: Result.id run data modify storage ui: Result.id set from storage recipe:dish Data[{ingredients:{id2:[$(ingredient1)],id3:[$(ingredient2)],id1:[$(ingredient3)]}}].result.id
$execute unless data storage ui: Result.id run data modify storage ui: Result.id set from storage recipe:dish Data[{ingredients:{id3:[$(ingredient1)],id1:[$(ingredient2)],id2:[$(ingredient3)]}}].result.id
$execute unless data storage ui: Result.id run data modify storage ui: Result.id set from storage recipe:dish Data[{ingredients:{id3:[$(ingredient1)],id2:[$(ingredient2)],id1:[$(ingredient3)]}}].result.id