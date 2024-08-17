#> ui:cooking/recipe/get
# 料理レシピの適合

$execute store result storage ui: Result.id int 1 run data get storage recipe:dish Data[{ingredients:[{id:$(ingredient1)},{id:$(ingredient2)},{id:$(ingredient3)}]}].result.id