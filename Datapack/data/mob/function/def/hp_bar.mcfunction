#> mob:def/hp_bar
# HPバーの定義

data modify storage mob:def hp_bar.left set value [\
    {text:"█████",color:"dark_gray"},\
    [{text:"▏",color:"dark_red"},{text:"▊████",color:"dark_gray"}],\
    [{text:"▍",color:"dark_red"},{text:"▌████",color:"dark_gray"}],\
    [{text:"▋",color:"red"},{text:"▎████",color:"dark_gray"}],\
    [{text:"█",color:"red"},{text:"████",color:"dark_gray"}],\
    [{text:"█▏",color:"red"},{text:"▊███",color:"dark_gray"}],\
    [{text:"█▍",color:"red"},{text:"▌███",color:"dark_gray"}],\
    [{text:"█▋",color:"red"},{text:"▎███",color:"dark_gray"}],\
    [{text:"██",color:"red"},{text:"███",color:"dark_gray"}],\
    [{text:"██▏",color:"yellow"},{text:"▊██",color:"dark_gray"}],\
    [{text:"██▍",color:"yellow"},{text:"▌██",color:"dark_gray"}],\
    [{text:"██▋",color:"yellow"},{text:"▎██",color:"dark_gray"}],\
    [{text:"███",color:"yellow"},{text:"██",color:"dark_gray"}],\
    [{text:"███▏",color:"yellow"},{text:"▊█",color:"dark_gray"}],\
    [{text:"███▍",color:"yellow"},{text:"▌█",color:"dark_gray"}],\
    [{text:"███▋",color:"yellow"},{text:"▎█",color:"dark_gray"}],\
    [{text:"████",color:"yellow"},{text:"█",color:"dark_gray"}],\
    [{text:"████▏",color:"yellow"},{text:"▊",color:"dark_gray"}],\
    [{text:"████▍",color:"yellow"},{text:"▌",color:"dark_gray"}],\
    [{text:"████▋",color:"yellow"},{text:"▎",color:"dark_gray"}],\
    {text:"█████",color:"yellow"},\
    {text:"█████",color:"green"}\
]

data modify storage mob:def hp_bar.right set value [\
    {text:"█████",color:"dark_gray"},\
    [{text:"▏",color:"green"},{text:"▊████",color:"dark_gray"}],\
    [{text:"▍",color:"green"},{text:"▌████",color:"dark_gray"}],\
    [{text:"▋",color:"green"},{text:"▎████",color:"dark_gray"}],\
    [{text:"█",color:"green"},{text:"████",color:"dark_gray"}],\
    [{text:"█▏",color:"green"},{text:"▊███",color:"dark_gray"}],\
    [{text:"█▍",color:"green"},{text:"▌███",color:"dark_gray"}],\
    [{text:"█▋",color:"green"},{text:"▎███",color:"dark_gray"}],\
    [{text:"██",color:"green"},{text:"███",color:"dark_gray"}],\
    [{text:"██▏",color:"green"},{text:"▊██",color:"dark_gray"}],\
    [{text:"██▍",color:"green"},{text:"▌██",color:"dark_gray"}],\
    [{text:"██▋",color:"green"},{text:"▎██",color:"dark_gray"}],\
    [{text:"███",color:"green"},{text:"██",color:"dark_gray"}],\
    [{text:"███▏",color:"green"},{text:"▊█",color:"dark_gray"}],\
    [{text:"███▍",color:"green"},{text:"▌█",color:"dark_gray"}],\
    [{text:"███▋",color:"green"},{text:"▎█",color:"dark_gray"}],\
    [{text:"████",color:"green"},{text:"█",color:"dark_gray"}],\
    [{text:"████▏",color:"green"},{text:"▊",color:"dark_gray"}],\
    [{text:"████▍",color:"green"},{text:"▌",color:"dark_gray"}],\
    [{text:"████▋",color:"green"},{text:"▎",color:"dark_gray"}],\
    {text:"█████",color:"green"}\
]

data modify storage mob:def hp_bar.space set value [\
    "",\
    "\uF804",\
    "\uF808\uF801",\
    "\uF808\uF805",\
    "\uF809\uF802",\
    "\uF809\uF806",\
    "\uF809\uF808\uF803",\
    "\uF809\uF808\uF807",\
    "\uF80A\uF804",\
    "\uF80A\uF808",\
    "\uF80A\uF808\uF805",\
    "\uF80A\uF809\uF801",\
    "\uF80A\uF809\uF806",\
    "\uF80A\uF809\uF808\uF802",\
    "\uF80A\uF809\uF808\uF807",\
    "\uF80B\uF803",\
    "\uF80B\uF808"\
]