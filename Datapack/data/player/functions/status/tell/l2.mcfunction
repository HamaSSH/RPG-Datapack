##########
#>
#

# レベル、経験値、所持金
    tellraw @s [" \uE247 ",{"text":"レベル： ","color":"#FAFF75","hoverEvent":{"action":"show_text","value":[{"text":"次のレベルまで: "},{"text":"(","color":"gray"},{"score":{"objective":"xp","name":"@s"},"color":"#ABFF8C"},{"text":"／","color":"gray"},{"score":{"objective":"xp_next","name":"@s"},"color":"gray"},{"text":")","color":"gray"}]}},{"score":{"name":"@s","objective":"level"},"bold":true},"    \uE24C ",{"text":"所持金： ","color":"#FAFF75"},{"score":{"name":"@s","objective":"gold"},"bold":true},{"text":"G ","color":"gray"}]