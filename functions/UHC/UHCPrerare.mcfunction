scoreboard players tag @p add OP
difficulty 0
gamerule logAdminCommands false
gamerule commandBlockOutput false
gamerule spawnRadius 5
gamerule spectatorsGenerateChunks false
gamerule naturalRegeneration false
title @p title [{"text":"U","color":"red","bold":"true"},{"text":"H","color":"gold","bold":"true"},{"text":"C","color":"blue","bold":"true"}]
title @p subtitle {"text":"SeraphicCraft UHC","color":"gray"}
fill ~10 200 ~10 ~-10 205 ~-10 minecraft:barrier 0 outline
fill ~9 205 ~9 ~-9 205 ~-9 minecraft:air
summon minecraft:armor_stand ~ 201 ~ {NoGravity:1,Invisible:1,Small:1,NoGranity:1,ArmorItems:[{},{},{},{id:"minecraft:gold_block",Count:1b,Damage:0s}],CustomName:"UHC",CustomNameVisible:1}
scoreboard players tag @e[type=armor_stand] add UHC
effect @p 15 3 0 true
effect @p 16 3 0 true
tp @p ~ 202 ~
spawnpoint @p ~ 201 ~
setworldspawn ~ 201 ~
worldborder center ~ ~
give @p minecraft:fishing_rod 1 0 {display:{Name:"JoinTeams"},ench:[{id:34,lvl:3}]}
scoreboard objectives add SelectTeams trigger
scoreboard objectives add JoinTeams stat.useItem.minecraft.fishing_rod
gamerule gameLoopFunction uhc:uhcloopteams
#Settings Create
scoreboard objectives add NoFiredItem dummy
scoreboard objectives add RandomTeam dummy
scoreboard objectives add RandomTeams dummy
scoreboard objectives add Ending dummy
scoreboard objectives add WorldSize dummy
scoreboard objectives add GiveItems dummy
scoreboard objectives add NameTag dummy
scoreboard objectives add NTTimes dummy
scoreboard players set @e[tag=UHC] NTTimes 0
scoreboard objectives add WorldStart dummy
scoreboard objectives add WorldEnding dummy
scoreboard objectives add WorldEnd dummy
scoreboard objectives add DeathCount deathCount
scoreboard objectives add Glowing dummy
scoreboard objectives add GLTimes dummy
scoreboard players set @e[tag=UHC] GLTimes 0
scoreboard objectives add PKTime dummy
scoreboard objectives add PKTimes dummy
scoreboard players set @e[tag=UHC] PKTimes 0
scoreboard objectives add WSTimes dummy
scoreboard players set @e[tag=UHC] WSTimes 0
scoreboard objectives add Health health
scoreboard objectives setdisplay list Health
scoreboard objectives add StartGame trigger
scoreboard objectives add Display dummy
scoreboard objectives add Timer dummy
scoreboard objectives add Time dummy
scoreboard objectives add NMTimes dummy
scoreboard objectives add Armor dummy
scoreboard objectives add NoFiredItem dummy
scoreboard players set @e[tag=UHC] NMTimes 0
scoreboard objectives add NoMonsters dummy
scoreboard objectives setdisplay sidebar Display
function uhcsetting:uhcsetting
#Teams Create
scoreboard teams add red
scoreboard teams option red color red
scoreboard teams option red friendlyfire false
scoreboard teams option red nametagVisibility hideForOtherTeams
scoreboard teams add blue
scoreboard teams option blue color blue
scoreboard teams option blue friendlyfire false
scoreboard teams option blue nametagVisibility hideForOtherTeams
scoreboard teams add green
scoreboard teams option green color green
scoreboard teams option green friendlyfire false
scoreboard teams option green nametagVisibility hideForOtherTeams
scoreboard teams add yellow
scoreboard teams option yellow color yellow
scoreboard teams option yellow friendlyfire false
scoreboard teams option yellow nametagVisibility hideForOtherTeams
scoreboard teams add gold
scoreboard teams option gold color gold
scoreboard teams option gold friendlyfire false
scoreboard teams option gold nametagVisibility hideForOtherTeams
scoreboard teams add purple
scoreboard teams option purple color dark_purple
scoreboard teams option purple friendlyfire false
scoreboard teams option purple nametagVisibility hideForOtherTeams
scoreboard teams add aqua
scoreboard teams option aqua color aqua
scoreboard teams option aqua friendlyfire false
scoreboard teams option aqua nametagVisibility hideForOtherTeams
scoreboard teams add dark_gray
scoreboard teams option dark_gray color dark_gray
scoreboard teams option dark_gray friendlyfire false
scoreboard teams option dark_gray nametagVisibility hideForOtherTeams
scoreboard teams add white
scoreboard teams option white color white
scoreboard teams option white friendlyfire false
scoreboard teams option white nametagVisibility hideForOtherTeams
scoreboard teams add black
scoreboard teams option black color black
scoreboard teams option black friendlyfire false
scoreboard teams option black nametagVisibility hideForOtherTeams
scoreboard teams add dark_blue
scoreboard teams option dark_blue color dark_blue
scoreboard teams option dark_blue friendlyfire false
scoreboard teams option dark_blue nametagVisibility hideForOtherTeams
scoreboard teams add dark_green
scoreboard teams option dark_green color dark_green
scoreboard teams option dark_green friendlyfire false
scoreboard teams option dark_green nametagVisibility hideForOtherTeams
scoreboard teams add dark_aqua
scoreboard teams option dark_aqua color dark_aqua
scoreboard teams option dark_aqua friendlyfire false
scoreboard teams option dark_aqua nametagVisibility hideForOtherTeams
scoreboard teams add dark_red
scoreboard teams option dark_red color dark_red
scoreboard teams option dark_red friendlyfire false
scoreboard teams option dark_red nametagVisibility hideForOtherTeams
scoreboard teams add light_purple
scoreboard teams option light_purple color light_purple
scoreboard teams option light_purple friendlyfire false
scoreboard teams option light_purple nametagVisibility hideForOtherTeams
scoreboard teams add gray
scoreboard teams option gray color gray
scoreboard teams option gray friendlyfire false
scoreboard teams option gray nametagVisibility hideForOtherTeams

scoreboard teams add NoTeam
scoreboard teams option NoTeam friendlyfire false
scoreboard teams join NoTeam @p