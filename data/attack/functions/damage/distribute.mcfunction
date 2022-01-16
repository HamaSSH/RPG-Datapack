# 24%で-1、62%で±0、24%で+1
  execute if predicate core:percentage/40 run scoreboard players add $DmgBlur Temporary 1
  execute if predicate core:percentage/40 run scoreboard players remove $DmgBlur Temporary 1
# もし分配回数が残っていれば再帰
  scoreboard players remove $DmgDistribute Temporary 1
  execute if score $DmgDistribute Temporary matches 1.. run function attack:damage/distribute