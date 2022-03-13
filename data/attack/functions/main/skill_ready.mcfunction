# 武器ごとで分岐
    execute if predicate attack:mainhand/dagger run function attack:main/dagger/skill/ready
    execute if predicate attack:mainhand/sword run function attack:main/sword/skill/ready
    execute if predicate attack:mainhand/spear run function attack:main/spear/skill/ready
    execute if predicate attack:mainhand/hammer run function attack:main/hammer/skill/ready
    execute if predicate attack:mainhand/wand run function attack:main/wand/skill/ready