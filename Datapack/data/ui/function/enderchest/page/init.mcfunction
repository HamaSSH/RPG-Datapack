#> ui:enderchest/page/init
# UIの初期化

# エンダーチェストの仕切り
    item replace entity @s enderchest.7 with glass_bottle[custom_model_data=3011,custom_data={ui:{item_type:"blank"}},hide_tooltip={}]
    item replace entity @s enderchest.16 with glass_bottle[custom_model_data=3011,custom_data={ui:{item_type:"blank"}},hide_tooltip={}]
    item replace entity @s enderchest.25 with glass_bottle[custom_model_data=3011,custom_data={ui:{item_type:"blank"}},hide_tooltip={}]

# ページリセット＋現在のページ表示用
    item replace entity @s enderchest.17 with glass_bottle[custom_model_data=3018,custom_data={ui:{item_type:"page_display"}},hide_tooltip={},max_stack_size=99]
    item modify entity @s enderchest.17 ui:enderchest/page_display

# ページ移行用のボタン
    item replace entity @s enderchest.8 with glass_bottle[custom_model_data=3015,custom_data={ui:{item_type:"forward"}},item_name='{"text":"→","bold":true}']
    item replace entity @s enderchest.26 with glass_bottle[custom_model_data=3014,custom_data={ui:{item_type:"backward"}},item_name='{"text":"←","bold":true}']