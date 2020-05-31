execute store result score #R0 Number run data get entity @s Rotation[0]
execute store result score #R1 Number run data get entity @s Rotation[1]

scoreboard players operation #R0 Number *= #-1 Number
scoreboard players operation #R1 Number *= #-1 Number

execute store result entity @s Rotation[0] float 1 run scoreboard players get #R0 Number
execute store result entity @s Rotation[1] float 1 run scoreboard players get #R1 Number

execute rotated as @s positioned ^ ^ ^0.1 unless block ^ ^ ^ #main:mob_immune run fill ~ ~ ~ ~ ~ ~ minecraft:air destroy
kill @s
