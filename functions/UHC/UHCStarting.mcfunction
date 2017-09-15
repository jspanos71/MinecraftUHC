time set 0
gamerule doDaylightCycle true
clear @a
gamemode s @a
effect @p resistance 30 5 true
function uhc:littleworld if @e[tag=UHC,score_WorldSize_min=0,score_WorldSize=0]
function uhc:largeworld if @e[tag=UHC,score_WorldSize_min=1,score_WorldSize=1]
function uhc:largestworld if @e[tag=UHC,score_WorldSize_min=2,score_WorldSize=2]
execute @e[tag=UHC] ~ ~ ~ /fill ~10 200 ~10 ~-10 205 ~-10 air
execute @a ~ ~ ~ /scoreboard players add Players Display 1
title @p reset
effect @a blindness 3 0 true
effect @a night_vision 3 0 true
effect @a hunger 3 0 true
function uhc:armor if @e[tag=UHC,score_Armor_min=1]
execute @a ~ ~ ~ /playsound minecraft:entity.wither.spawn player @p
title @a title [{"text":"Game Start!","color":"green","bold":true}]
gamerule gameLoopFunction uhc:uhclooping
gamerule spectatorsGenerateChunks false
scoreboard players tag @a add Gaming
difficulty hard