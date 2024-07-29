#> core:load/team
# チームの設定

# 敵モブTeam
    team add Enemy
    team modify Enemy friendlyFire false

# 当たり判定
    team add NoCollision
    team modify NoCollision collisionRule never

# ハンター
    team add Hunter "ハンター"
    team add Hunter1 "ハンター+1"
    team add Hunter2 "ハンター+2"
    team modify Hunter prefix "\uE175\uF821"
    team modify Hunter1 prefix "\uE185\uF821"
    team modify Hunter2 prefix "\uE195\uF821"

# ファイター
    team add Fighter "ファイター"
    team add Fighter1 "ファイター+1"
    team add Fighter2 "ファイター+2"
    team modify Fighter prefix "\uE177\uF821"
    team modify Fighter1 prefix "\uE187\uF821"
    team modify Fighter2 prefix "\uE197\uF821"

# パラディン
    team add Paladin "パラディン"
    team add Paladin1 "パラディン+1"
    team add Paladin2 "パラディン+2"
    team modify Paladin prefix "\uE178\uF821"
    team modify Paladin1 prefix "\uE188\uF821"
    team modify Paladin2 prefix "\uE198\uF821"

# ウィザード
    team add Wizard "ウィザード"
    team add Wizard1 "ウィザード+1"
    team add Wizard2 "ウィザード+2"
    team modify Wizard prefix "\uE179\uF821"
    team modify Wizard1 prefix "\uE189\uF821"
    team modify Wizard2 prefix "\uE199\uF821"

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