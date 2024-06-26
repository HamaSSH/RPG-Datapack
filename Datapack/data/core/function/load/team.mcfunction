#> core:load/team
# チームの設定

# 当たり判定
    team add NoCollision
    team modify NoCollision collisionRule never

# アサシン
    team add Assassin "アサシン"
    team add Assassin1 "アサシン+1"
    team add Assassin2 "アサシン+2"
    team modify Assassin prefix "\uE17A"
    team modify Assassin1 prefix "\uE18A"
    team modify Assassin2 prefix "\uE19A"

# ファイター
    team add Fighter "ファイター"
    team add Fighter1 "ファイター+1"
    team add Fighter2 "ファイター+2"
    team modify Fighter prefix "\uE17B"
    team modify Fighter1 prefix "\uE18B"
    team modify Fighter2 prefix "\uE19B"

# ナイト
    team add Knight "ナイト"
    team add Knight1 "ナイト+1"
    team add Knight2 "ナイト+2"
    team modify Knight prefix "\uE17C"
    team modify Knight1 prefix "\uE18C"
    team modify Knight2 prefix "\uE19C"

# ウォーリア
    team add Warrior "ウォーリア"
    team add Warrior1 "ウォーリア+1"
    team add Warrior2 "ウォーリア+2"
    team modify Warrior prefix "\uE17D"
    team modify Warrior1 prefix "\uE18D"
    team modify Warrior2 prefix "\uE19D"

# ウィザード
    team add Wizard "ウィザード"
    team add Wizard1 "ウィザード+1"
    team add Wizard2 "ウィザード+2"
    team modify Wizard prefix "\uE17E"
    team modify Wizard1 prefix "\uE18E"
    team modify Wizard2 prefix "\uE19E"

# ハンター
    team add Hunter "ハンター"
    team add Hunter1 "ハンター+1"
    team add Hunter2 "ハンター+2"
    team modify Hunter prefix "\uE17F"
    team modify Hunter1 prefix "\uE18F"
    team modify Hunter2 prefix "\uE19F"

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