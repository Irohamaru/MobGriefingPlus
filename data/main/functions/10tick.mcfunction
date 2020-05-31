scoreboard players set #Tick Number 0

execute as @e[type=#main:can_target_player,predicate=main:player_targeted] at @s run function mob:can_target_player
execute as @e[type=#main:cannot_target_player] at @s if entity @p[gamemode=!creative,gamemode=!spectator,distance=..8] run function mob:cannot_target_player

tag @e[type=#main:can_target_player,tag=PlayerTargeted,predicate=!main:player_targeted] remove PlayerTargeted

scoreboard players add #10Tick Number 1
execute if score #10Tick Number matches 20.. run function main:10second
