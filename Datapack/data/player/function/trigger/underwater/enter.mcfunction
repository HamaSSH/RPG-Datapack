#> player:trigger/underwater/enter
# 水中に潜った際の処理

tag @s add Underwater

# 内部的な酸素ゲージは減らないようにattributeを設定
    attribute @s generic.oxygen_bonus base set 1024