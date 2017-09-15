time set 1200
gamerule doDaylightCycle false
execute @e[tag=UHC] ~ ~ ~ /spreadplayers ~ ~ 27 28 true @e[type=Player]
effect @a resistance 15 5 true
title @a title [{"text":"Teleporting!","color":"gold","bold":true}]
title @a subtitle [{"text":"All players will be invincible for 15 seconds.","color":"green"}]
execute @e[tag=UHC] ~ ~ ~ /spreadplayers ~ ~ 27 30 true @a