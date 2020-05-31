tag @s add PlayerTargeted
data modify entity @s ignited set value 1b

execute store result score #X0 Number run data get entity @s Pos[0]
execute store result score #Y0 Number run data get entity @s Pos[1]
execute store result score #Z0 Number run data get entity @s Pos[2]

execute store result score #X1 Number run data get entity @p Pos[0]
execute store result score #Y1 Number run data get entity @p Pos[1]
execute store result score #Z1 Number run data get entity @p Pos[2]

scoreboard players operation #X1 Number -= #X0 Number
scoreboard players operation #Y1 Number -= #Y0 Number
scoreboard players operation #Z1 Number -= #Z0 Number

execute if score #X1 Number matches ..-1 run scoreboard players operation #X1 Number *= #-1 Number
execute if score #Y1 Number matches ..-1 run scoreboard players operation #Y1 Number *= #-1 Number
execute if score #Z1 Number matches ..-1 run scoreboard players operation #Z1 Number *= #-1 Number

scoreboard players operation #X1 Number += #Y1 Number
scoreboard players operation #X1 Number += #Z1 Number

execute store result entity @s Fuse short 10 run scoreboard players get #X1 Number

scoreboard players operation #X1 Number < #10 Number
execute store result entity @s ExplosionRadius byte 1 run scoreboard players get #X1 Number

playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 4 0
tellraw @a[distance=..32] ["*Hiss*"]
