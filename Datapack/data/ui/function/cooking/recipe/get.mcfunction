#> ui:cooking/recipe/get
# 料理レシピの適合

$execute store result storage ui: Result.id int 1 run data get storage recipe:dish Data[{ingredients:[{id1:$(ingredient1)},{id2:$(ingredient2)},{id3:$(ingredient3)}]}].result.id