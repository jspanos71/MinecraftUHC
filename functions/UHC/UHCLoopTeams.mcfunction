scoreboard teams join red @a[team=NoTeam,score_SelectTeams_min=1,score_SelectTeams=1]
scoreboard teams join blue @a[team=NoTeam,score_SelectTeams_min=2,score_SelectTeams=2]
scoreboard teams join green @a[team=NoTeam,score_SelectTeams_min=3,score_SelectTeams=3]
scoreboard teams join yellow @a[team=NoTeam,score_SelectTeams_min=4,score_SelectTeams=4]
scoreboard teams join gold @a[team=NoTeam,score_SelectTeams_min=5,score_SelectTeams=5]
scoreboard teams join purple @a[team=NoTeam,score_SelectTeams_min=6,score_SelectTeams=6]
scoreboard teams join aqua @a[team=NoTeam,score_SelectTeams_min=7,score_SelectTeams=7]
scoreboard teams join dark_gray @a[team=NoTeam,score_SelectTeams_min=8,score_SelectTeams=8]
scoreboard teams join white @a[team=NoTeam,score_SelectTeams_min=9,score_SelectTeams=9]
scoreboard teams join black @a[team=NoTeam,score_SelectTeams_min=10,score_SelectTeams=10]
scoreboard teams join dark_blue @a[team=NoTeam,score_SelectTeams_min=11,score_SelectTeams=11]
scoreboard teams join dark_green @a[team=NoTeam,score_SelectTeams_min=12,score_SelectTeams=12]
scoreboard teams join dark_aqua @a[team=NoTeam,score_SelectTeams_min=13,score_SelectTeams=13]
scoreboard teams join dark_red @a[team=NoTeam,score_SelectTeams_min=14,score_SelectTeams=14]
scoreboard teams join light_purple @a[team=NoTeam,score_SelectTeams_min=15,score_SelectTeams=15]
scoreboard teams join gray @a[team=NoTeam,score_SelectTeams_min=16,score_SelectTeams=16]

scoreboard players set @a SelectTeams 0

scoreboard players enable @p[tag=OP] StartGame

execute @p[tag=OP,score_JoinTeams_min=1] ~ ~ ~ /function uhcsetting:uhcsetting
execute @p[tag=OP,score_JoinTeams_min=1] ~ ~ ~ /scoreboard teams join NoTeam @a
execute @p[tag=OP,score_JoinTeams_min=1] ~ ~ ~ /function uhc:jointeams
tellraw @p[tag=OP,score_JoinTeams_min=1] [{"text":"[Game Start!]","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger StartGame set 1"},"hoverEvent":{"action":"show_text","value":"Please confirm all players are assigned to a team."}}]
execute @p[tag=OP,score_StartGame_min=1] ~ ~ ~ /function uhc:uhcstarting
scoreboard players set @a JoinTeams 0
effect @a minecraft:instant_health 1 1