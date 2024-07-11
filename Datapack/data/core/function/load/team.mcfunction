#> core:load/team
# チームの設定

# 当たり判定
    team add NoCollision
    team modify NoCollision collisionRule never

# ローグ
    team add Rogue "ローグ"
    team add Rogue1 "ローグ+1"
    team add Rogue2 "ローグ+2"
    team modify Rogue prefix "\uE176"
    team modify Rogue1 prefix "\uE186"
    team modify Rogue2 prefix "\uE196"

# ファイター
    team add Fighter "ファイター"
    team add Fighter1 "ファイター+1"
    team add Fighter2 "ファイター+2"
    team modify Fighter prefix "\uE177"
    team modify Fighter1 prefix "\uE187"
    team modify Fighter2 prefix "\uE197"

# パラディン
    team add Paladin "パラディン"
    team add Paladin1 "パラディン+1"
    team add Paladin2 "パラディン+2"
    team modify Paladin prefix "\uE178"
    team modify Paladin1 prefix "\uE188"
    team modify Paladin2 prefix "\uE198"

# ウィザード
    team add Wizard "ウィザード"
    team add Wizard1 "ウィザード+1"
    team add Wizard2 "ウィザード+2"
    team modify Wizard prefix "\uE179"
    team modify Wizard1 prefix "\uE189"
    team modify Wizard2 prefix "\uE199"

# 醸造UI
    team add Brewing
    team modify Brewing collisionRule never
    team modify Brewing prefix ["\uF808",{"text":"\uE251","color":"white"},"\uF80C\uF80A\uF808\uF801",{"text":"醸造","bold":true},"\uF80F"]

# 鍛冶UI
    team add Smithing
    team modify Smithing collisionRule never
    team modify Smithing prefix ["\uF808",{"text":"\uE252","color":"white"},"\uF80C\uF80A\uF808\uF801",{"text":"鍛冶","bold":true},"\uF80F"]

# 店UI
    team add Shop
    team modify Shop collisionRule never
    team modify Shop prefix ["\uF808",{"text":"\uE254","color":"white"},"\uF80F"]

# 転職UI
    team add ClassChange
    team modify ClassChange collisionRule never
    team modify ClassChange prefix ["\uF808",{"text":"\uE256","color":"white"},"\uF80C\uF80A\uF808\uF801",{"text":"転職","bold":true},"\uF80F"]