execute unless block ~ ~ ~ #main:mob_immune run fill ~ ~ ~ ~ ~ ~ minecraft:air destroy

execute if entity @s[nbt={Size:1}] run function mob:block_melter/size1
execute if entity @s[nbt={Size:3}] run function mob:block_melter/size2
execute if entity @s[type=minecraft:hoglin] run function mob:block_melter/size1
execute if entity @s[type=minecraft:zoglin] run function mob:block_melter/size1
execute if entity @s[type=minecraft:wither] run function mob:block_melter/size2
