#> player:class/wizard/reincarnation
# 転生処理

function player:class/wizard/lv1
tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【ウィザード+1】","color":"#A486DA"},{"text":"Lv.","color":"gray"},{"score":{"name":"@s","objective":"WizardLVL"},"bold":true},{"text":" に転生しました ！"}]
playsound ui.toast.challenge_complete master @s ~ ~ ~ 0.6 1