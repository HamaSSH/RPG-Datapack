#> core:load/team
# teamの設定

# 当たり判定無視
    team add NoCollision
    team modify NoCollision collisionRule never

# 敵モブのフレンドリファイアー無効
    team add Enemy
    team modify Enemy friendlyFire false

# ハンター
    team add Hunter "ハンター"
    team add Hunter1 "ハンター+1"
    team add Hunter2 "ハンター+2"

# ファイター
    team add Fighter "ファイター"
    team add Fighter1 "ファイター+1"
    team add Fighter2 "ファイター+2"

# パラディン
    team add Paladin "パラディン"
    team add Paladin1 "パラディン+1"
    team add Paladin2 "パラディン+2"

# ウィザード
    team add Wizard "ウィザード"
    team add Wizard1 "ウィザード+1"
    team add Wizard2 "ウィザード+2"