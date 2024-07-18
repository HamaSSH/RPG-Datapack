#> asset:achievement/init
# 実績画面の初期化

# 全ての進捗を剥奪
    advancement revoke @s from asset:achievement/_

# 左端と右端の実績を解除
    advancement grant @s only asset:achievement/_
    advancement grant @s only asset:achievement/1.7
    advancement grant @s only asset:achievement/2.7
    advancement grant @s only asset:achievement/3.7

# 実績達成検知用の進捗
    advancement revoke @s only player:trigger/achievement_1.6
    advancement revoke @s only player:trigger/achievement_2.6