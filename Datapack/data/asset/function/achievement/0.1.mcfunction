#> asset:achievement/0.1
# advancement asset:achievement/0.1の達成 #TODO: トロフィーを直す

execute positioned 295 -51 -350 align xz run summon item_display ~ ~ ~ {Tags:["0.1.king_size"],item:{id:"glass_bottle",components:{custom_model_data:5001}},transformation:{translation:[0.33f,1.2f,0.45f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,-0.285f,0.278f,0.917f]}}
execute positioned 295 -51 -350 align xz run summon item_display ~ ~ ~ {Tags:["0.1.king_size"],item:{id:"glass_bottle",components:{custom_model_data:5002}},transformation:{translation:[0.65f,0.45f,0.72f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0.961f,-0.249f,0.034f,0.112f]}}
execute positioned 295 -51 -350 align xz run summon block_display ~ ~ ~ {Tags:["0.1.king_size"],block_state:{Name:"smooth_stone_slab"},transformation:{translation:[0.1f,0f,0.1f],left_rotation:[0f,0f,0f,1f],scale:[0.8f,0.8f,0.8f],right_rotation:[0f,0f,0f,1f]}}

# クリアメッセージ
    playsound resource:custom.levelup master @s ~ ~ ~ 0.5 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824隠し実績達成おめでとう。スポーン地点に"]
    tellraw @s ["\uF828\uF824トロフィーを置いたよ。ゲームクリアみたいなもんです。"]
    tellraw @s "\uE302ぐちゃぐちゃで申し訳ない。いつか直します。 -まっしゅ"
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]