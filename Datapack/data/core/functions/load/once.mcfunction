#> core:load/once
# 一度きり実行されるコマンド (初期設定)

# ワールドのバージョン
    data modify storage global: Version set value "v0.0.0"

# forceload範囲の設定
    execute in overworld run forceload add -1 -1 0 0

# 汎用エンティティ・ストレージ 83a-51-1-X-X
    summon marker 0.0 0.0 0.0 {UUID:[I; 2106,5308417,0,0]}
    summon armor_stand 0.0 0.0 0.0 {UUID:[I; 2106,5308417,0,1],Marker:1b,Invisible:1b}
    setblock 0 0 0 white_shulker_box{Lock:"汎用シュルカーボックス"}

# ゲームルールの設定
    function core:load/gamerule

# チームの設定
    function core:load/team

# 汎用スコアの定義
    scoreboard objectives add Temporary dummy
    scoreboard objectives add Timer dummy
    scoreboard objectives add Constant dummy
    function core:load/constant

# スコアボード