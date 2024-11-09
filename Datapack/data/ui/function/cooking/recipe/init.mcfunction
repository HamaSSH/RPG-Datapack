#> ui:cooking/recipe/init
# 料理レシピの初期化

data modify storage recipe:dish Data set value []

# 野菜スープ　　　　｜にんじん＋じゃがいも
data modify storage recipe:dish Data append value {ingredients:{id1:[1057],id2:[1055,1059],id3:[0]},result:{id:1099}}

# ふっくらパン　　　｜小麦＋小麦＋スウィートベリー
data modify storage recipe:dish Data append value {ingredients:{id1:[1031],id2:[1031],id3:[1027]},result:{id:1041}}

# クッキー　　　　　｜カカオ豆＋小麦
data modify storage recipe:dish Data append value {ingredients:{id1:[1075],id2:[1031],id3:[0]},result:{id:1042}}

# はちみつりんご　　｜極上のハニー＋りんご
data modify storage recipe:dish Data append value {ingredients:{id1:[1052],id2:[1025],id3:[0]},result:{id:1048}}

# チキンシチュー　　｜クルック肉＋にんじん＋じゃがいも
data modify storage recipe:dish Data append value {ingredients:{id1:[1079],id2:[1030],id3:[1029]},result:{id:1067}}

# チョコクッキー　　｜カカオ豆＋カカオ豆＋小麦
data modify storage recipe:dish Data append value {ingredients:{id1:[1075],id2:[1075],id3:[1031]},result:{id:1068}}

# 冷凍ベリー　　　　｜アイスキューブ＋ブルゥベリー
data modify storage recipe:dish Data append value {ingredients:{id1:[1065],id2:[1061],id3:[0]},result:{id:1071}}

# グリルステーキ　　｜グモー肉＋チャシュルーム＋アカシュルーム
data modify storage recipe:dish Data append value {ingredients:{id1:[1078],id2:[1059],id3:[1058]},result:{id:1072}}

# ベリーケーキ　　　｜ラッキィベリー＋小麦＋スウィートベリー
data modify storage recipe:dish Data append value {ingredients:{id1:[1043],id2:[1031],id3:[1027]},result:{id:1073}}

# 失敗作　　　　　　｜汚れたホネ＋スライムボール＋腐肉
data modify storage recipe:dish Data append value {ingredients:{id1:[1064],id2:[1036],id3:[1020]},result:{id:1074}}