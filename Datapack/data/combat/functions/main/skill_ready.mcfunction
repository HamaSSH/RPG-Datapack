##########
#>
#

# 武器ごとで分岐
    execute if predicate combat:mainhand/dagger run function combat:main/dagger/skill/ready
    execute if predicate combat:mainhand/sword run function combat:main/sword/skill/ready
    execute if predicate combat:mainhand/spear run function combat:main/spear/skill/ready
    execute if predicate combat:mainhand/hammer run function combat:main/hammer/skill/ready
    execute if predicate combat:mainhand/wand run function combat:main/wand/skill/ready