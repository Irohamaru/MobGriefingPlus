summon minecraft:tnt ^ ^1 ^1 {Tags:[New,TNT],Fuse:80s}

execute store result score #X0 Number run data get entity @s Pos[0]
execute store result score #Y0 Number run data get entity @s Pos[1]
execute store result score #Z0 Number run data get entity @s Pos[2]

execute store result score #X1 Number run data get entity @p Pos[0]
execute store result score #Y1 Number run data get entity @p Pos[1]
execute store result score #Z1 Number run data get entity @p Pos[2]

scoreboard players operation #X1 Number -= #X0 Number
scoreboard players operation #Y1 Number -= #Y0 Number
scoreboard players operation #Z1 Number -= #Z0 Number

execute store result entity @e[tag=TNT,tag=New,limit=1] Motion[0] double 0.1 run scoreboard players get #X1 Number
execute store result entity @e[tag=TNT,tag=New,limit=1] Motion[1] double 0.5 run scoreboard players get #Y1 Number
execute store result entity @e[tag=TNT,tag=New,limit=1] Motion[2] double 0.1 run scoreboard players get #Z1 Number

playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 4 0

tag @e[tag=TNT,tag=New,limit=1] remove New
tag @s add PlayerTargeted
