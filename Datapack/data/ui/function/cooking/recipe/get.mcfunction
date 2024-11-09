#> ui:cooking/recipe/get
# 料理レシピの適合

$execute store result storage ui: Result.id int 1 run data get storage recipe:dish Data[{ingredients:{id1:[$(ingredient1)],id2:[$(ingredient2)],id3:[$(ingredient3)]}}].result.id
$execute if data storage ui: Result{id:0} store result storage ui: Result.id int 1 run data get storage recipe:dish Data[{ingredients:{id1:[$(ingredient1)],id3:[$(ingredient2)],id2:[$(ingredient3)]}}].result.id
$execute if data storage ui: Result{id:0} store result storage ui: Result.id int 1 run data get storage recipe:dish Data[{ingredients:{id2:[$(ingredient1)],id1:[$(ingredient2)],id3:[$(ingredient3)]}}].result.id
$execute if data storage ui: Result{id:0} store result storage ui: Result.id int 1 run data get storage recipe:dish Data[{ingredients:{id2:[$(ingredient1)],id3:[$(ingredient2)],id1:[$(ingredient3)]}}].result.id
$execute if data storage ui: Result{id:0} store result storage ui: Result.id int 1 run data get storage recipe:dish Data[{ingredients:{id3:[$(ingredient1)],id1:[$(ingredient2)],id2:[$(ingredient3)]}}].result.id
$execute if data storage ui: Result{id:0} store result storage ui: Result.id int 1 run data get storage recipe:dish Data[{ingredients:{id3:[$(ingredient1)],id2:[$(ingredient2)],id1:[$(ingredient3)]}}].result.id