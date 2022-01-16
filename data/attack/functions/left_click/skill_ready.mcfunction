# 武器ごとで分岐
  execute if predicate attack:mainhand/dagger run function attack:left_click/dagger/skill/ready
  execute if predicate attack:mainhand/sword run function attack:left_click/sword/skill/ready
  execute if predicate attack:mainhand/spear run function attack:left_click/spear/skill/ready
  execute if predicate attack:mainhand/hammer run function attack:left_click/hammer/skill/ready
  execute if predicate attack:mainhand/wand run function attack:left_click/wand/skill/ready