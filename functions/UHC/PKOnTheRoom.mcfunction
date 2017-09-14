execute @e[tag=UHC] ~ ~ ~ /fill ~33 170 ~33 ~-33 ~176 ~-33 minecraft:bedrock 0 outline
effect @a 11 5 5 true
execute @a ~ ~ ~ /tp ~ 172 ~
title @a title [{"text":"Teleproting!","color":"gold","bold":true}]
title @a subtitle [{"text":"All players will be invincible in 5 seconds.","color":"green"}]
execute @a[m=0] ~ ~ ~ /tp ~ 172 ~