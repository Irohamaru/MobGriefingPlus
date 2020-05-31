execute if entity @s[type=minecraft:creeper,tag=!PlayerTargeted] run function mob:creeper
execute if entity @s[type=#main:block_puncher] anchored eyes positioned ^ ^ ^1 anchored feet positioned ~ ~-0.5 ~ run function mob:block_puncher
execute if entity @s[type=#main:block_melter] run function mob:block_melter/main
execute if entity @s[type=#main:web_thrower,tag=!PlayerTargeted] run function mob:web_thrower
execute if entity @s[type=#main:tnt_thrower,tag=!PlayerTargeted] run function mob:tnt_thrower
execute if entity @s[type=#main:fire_placer] run function mob:fire_placer
#execute if entity @s[type=#main:vortex_maker] run function mob:vortex_maker
