#> asset:magic/5503.wind_burst/tick/bullet/move
# マクロで指定した座標だけtp(ブロックが無ければ)

$execute positioned ^ ^ ^$(forward) if block ^ ^ ^$(forward) #lib:no_collision run tp @s ^ ^ ^$(forward)