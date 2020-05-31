execute as @e[type=minecraft:arrow,nbt={inGround:0b,pickup:0b}] positioned as @s run function mob:arrow/air
execute as @e[type=minecraft:arrow,nbt={inGround:1b,pickup:0b}] positioned as @s run function mob:arrow/block

scoreboard players add #Tick Number 1
execute if score #Tick Number matches 10.. run function main:10tick
