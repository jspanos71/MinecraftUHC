scoreboard players add @e[tag=UHC] Timer 1
execute @e[tag=UHC,score_Timer_min=1200] ~ ~ ~ /scoreboard players add Time Display 1
execute @e[tag=UHC,score_Timer_min=1200] ~ ~ ~ /scoreboard players add @e[tag=UHC,score_Timer_min=1200] Time 1
#NameTag
execute @e[tag=UHC,score_Timer_min=1200] ~ ~ ~ /scoreboard players operation @e[tag=UHC,score_Timer_min=1200] NTTimes = Time Display
scoreboard players operation @e[tag=UHC,score_Time_min=1] NTTimes -= @e[tag=UHC] NameTag
scoreboard players tag @e[tag=UHC] remove NT
scoreboard players tag @e[tag=UHC,score_NTTimes_min=0,score_NTTimes=0] add NT
execute @e[tag=NT,score_Timer_min=1200] ~ ~ ~ /tellraw @a [{"score":{"name":"@e[tag=UHC]","objective":"NameTag"},"color":"red","bold":true},{"text":" minutes,show nametag.","color":"gold"}]
execute @e[tag=NT,score_Timer_min=1200] ~ ~ ~ /execute @a ~ ~ ~ /playsound minecraft:entity.enderdragon.growl player @p
function uhc:nametag if @e[tag=NT,score_Timer_min=1200]
#WorldSize
execute @e[tag=UHC,score_Timer_min=1200] ~ ~ ~ /scoreboard players operation @e[tag=UHC,score_Timer_min=1200] WSTimes = Time Display
scoreboard players operation @e[tag=UHC,score_Time_min=1] WSTimes -= @e[tag=UHC] WorldStart
scoreboard players tag @e[tag=UHC] remove WS
scoreboard players tag @e[tag=UHC,score_WSTimes_min=0,score_WSTimes=0] add WS
execute @e[tag=WS,score_Timer_min=1200] ~ ~ ~ /tellraw @a [{"score":{"name":"@e[tag=UHC]","objective":"WorldStart"},"color":"red","bold":true},{"text":" minutes,change the world board size.","color":"gold"}]
execute @e[tag=WS,score_Timer_min=1200] ~ ~ ~ /execute @a ~ ~ ~ /playsound minecraft:entity.enderdragon.growl player @p
function uhc:worldsizeload if @e[tag=WS,score_Timer_min=1200,score_WSTimes_min=0,score_WSTimes=0]
#Glowing
execute @e[tag=UHC,score_Timer_min=1200] ~ ~ ~ /scoreboard players operation @e[tag=UHC,score_Timer_min=1200] GLTimes = Time Display
scoreboard players operation @e[tag=UHC,score_Time_min=1] GLTimes -= @e[tag=UHC] Glowing
scoreboard players tag @e[tag=UHC] remove GL
scoreboard players tag @e[tag=UHC,score_GLTimes_min=0,score_GLTimes=0] add GL
execute @e[tag=GL,score_Timer_min=1200] ~ ~ ~ /tellraw @a [{"score":{"name":"@e[tag=UHC]","objective":"Glowing"},"color":"red","bold":true},{"text":" minutes,all of players glowing.","color":"gold"}]
execute @e[tag=GL,score_Timer_min=1200] ~ ~ ~ /execute @a ~ ~ ~ /playsound minecraft:entity.enderdragon.growl player @p
function uhc:playerglowing if @e[tag=GL,score_Timer_min=1200]
#NoMonsters
execute @e[tag=UHC,score_Timer_min=1200] ~ ~ ~ /scoreboard players operation @e[tag=UHC,score_Timer_min=1200] NMTimes = Time Display
scoreboard players operation @e[tag=UHC,score_Time_min=1] NMTimes -= @e[tag=UHC] NoMonsters
scoreboard players tag @e[tag=UHC] remove NM
scoreboard players tag @e[tag=UHC,score_NMTimes_min=0,score_NMTimes=0] add NM
execute @e[tag=NM,score_Timer_min=1200] ~ ~ ~ /tellraw @a [{"score":{"name":"@e[tag=UHC]","objective":"NoMonsters"},"color":"red","bold":true},{"text":" minutes,clear monsters.","color":"gold"}]
execute @e[tag=NM,score_Timer_min=1200] ~ ~ ~ /execute @a ~ ~ ~ /playsound minecraft:entity.enderdragon.growl player @p
function uhc:nomonsters if @e[tag=NM,score_Timer_min=1200]
#PK
execute @e[tag=UHC,score_Timer_min=1200] ~ ~ ~ /scoreboard players operation @e[tag=UHC,score_Timer_min=1200] PKTimes = Time Display
scoreboard players operation @e[tag=UHC,score_Time_min=1] PKTimes -= @e[tag=UHC] PKTime
scoreboard players tag @e[tag=UHC] remove PK1M
scoreboard players tag @e[tag=UHC,score_PKTimes_min=-1,score_PKTimes=-1] add PK1M
execute @e[tag=PK1M,score_Timer_min=1200] ~ ~ ~ /tellraw @a [{"text":"All players will be transported in 1 minute.","color":"glod","bold":true}]

execute @e[tag=UHC,score_Timer_min=1100,score_Timer=1100] ~ ~ ~ /scoreboard players operation @e[tag=UHC,score_Timer_min=1100,score_Timer=1100] PKTimes = Time Display
scoreboard players operation @e[tag=UHC,score_Timer_min=1100,score_Timer=1100] PKTimes -= @e[tag=UHC] PKTime
scoreboard players tag @e[tag=UHC] remove PK05
scoreboard players tag @e[tag=UHC,score_PKTimes_min=-1,score_PKTimes=-1,score_Timer_min=1100,score_Timer=1100] add PK05
execute @e[tag=PK05] ~ ~ ~ /title @a title [{"text":"5","color":"red","bold":true}]
execute @e[tag=PK05] ~ ~ ~ /execute @a ~ ~ ~ /playsound minecraft:entity.experience_orb.pickup player @p

execute @e[tag=UHC,score_Timer_min=1120,score_Timer=1120] ~ ~ ~ /scoreboard players operation @e[tag=UHC,score_Timer_min=1120,score_Timer=1120] PKTimes = Time Display
scoreboard players operation @e[tag=UHC,score_Timer_min=1120,score_Timer=1120] PKTimes -= @e[tag=UHC] PKTime
scoreboard players tag @e[tag=UHC] remove PK04
scoreboard players tag @e[tag=UHC,score_PKTimes_min=-1,score_PKTimes=-1,score_Timer_min=1120,score_Timer=1120] add PK04
execute @e[tag=PK04] ~ ~ ~ /title @a title [{"text":"4","color":"red","bold":true}]
execute @e[tag=PK04] ~ ~ ~ /execute @a ~ ~ ~ /playsound minecraft:entity.experience_orb.pickup player @p

execute @e[tag=UHC,score_Timer_min=1140,score_Timer=1140] ~ ~ ~ /scoreboard players operation @e[tag=UHC,score_Timer_min=1140,score_Timer=1140] PKTimes = Time Display
scoreboard players operation @e[tag=UHC,score_Timer_min=1140,score_Timer=1140] PKTimes -= @e[tag=UHC] PKTime
scoreboard players tag @e[tag=UHC] remove PK03
scoreboard players tag @e[tag=UHC,score_PKTimes_min=-1,score_PKTimes=-1,score_Timer_min=1140,score_Timer=1140] add PK03
execute @e[tag=PK03] ~ ~ ~ /title @a title [{"text":"3","color":"red","bold":true}]
execute @e[tag=PK03] ~ ~ ~ /execute @a ~ ~ ~ /playsound minecraft:entity.experience_orb.pickup player @p

execute @e[tag=UHC,score_Timer_min=1160,score_Timer=1160] ~ ~ ~ /scoreboard players operation @e[tag=UHC,score_Timer_min=1160,score_Timer=1160] PKTimes = Time Display
scoreboard players operation @e[tag=UHC,score_Timer_min=1160,score_Timer=1160] PKTimes -= @e[tag=UHC] PKTime
scoreboard players tag @e[tag=UHC] remove PK02
scoreboard players tag @e[tag=UHC,score_PKTimes_min=-1,score_PKTimes=-1,score_Timer_min=1160,score_Timer=1186] add PK02
execute @e[tag=PK02] ~ ~ ~ /title @a title [{"text":"2","color":"red","bold":true}]
execute @e[tag=PK02] ~ ~ ~ /execute @a ~ ~ ~ /playsound minecraft:entity.experience_orb.pickup player @p

execute @e[tag=UHC,score_Timer_min=1180,score_Timer=1180] ~ ~ ~ /scoreboard players operation @e[tag=UHC,score_Timer_min=1180,score_Timer=1180] PKTimes = Time Display
scoreboard players operation @e[tag=UHC,score_Timer_min=1180,score_Timer=1180] PKTimes -= @e[tag=UHC] PKTime
scoreboard players tag @e[tag=UHC] remove PK01
scoreboard players tag @e[tag=UHC,score_PKTimes_min=-1,score_PKTimes=-1,score_Timer_min=1180,score_Timer=1180] add PK01
execute @e[tag=PK01] ~ ~ ~ /title @a title [{"text":"1","color":"red","bold":true}]
execute @e[tag=PK01] ~ ~ ~ /execute @a ~ ~ ~ /playsound minecraft:entity.experience_orb.pickup player @p

execute @e[tag=UHC,score_Timer_min=1200] ~ ~ ~ /scoreboard players operation @e[tag=UHC,score_Timer_min=1200] PKTimes = Time Display
scoreboard players operation @e[tag=UHC,score_Time_min=1] PKTimes -= @e[tag=UHC] PKTime
scoreboard players tag @e[tag=UHC] remove PK
scoreboard players tag @e[tag=UHC,score_PKTimes_min=0,score_PKTimes=0,score_Timer_min=1200,score_Timer=1200] add PK
function uhc:playerpktime if @e[tag=PK]

gamemode sp @a[score_DeathCount_min=1]
effect @e[type=Player,m=3] 16 65535 0
execute @a[score_DeathCount_min=1] ~ ~ ~ /scoreboard players remove Players Display 1
scoreboard players set @a[score_DeathCount_min=1] DeathCount 0

scoreboard players set @e[tag=UHC,score_Timer_min=1200,score_Timer=1200] Timer 0

function uhc:playersp if @e[tag=!Gaming]