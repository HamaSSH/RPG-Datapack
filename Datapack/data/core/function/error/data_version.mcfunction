#> core:error/data_version
# バージョンチェック失敗時

# ストレージに記憶
    data modify storage global: error.data_version set from storage core:temp data_version
    tellraw @s [{text:" ✖ 動作バージョン\uF822(26.3)\uF822と異なる環境でのjoinを検出しました。",color:"red"},"\n\uF829重大な問題が発生する可能性があります。"]