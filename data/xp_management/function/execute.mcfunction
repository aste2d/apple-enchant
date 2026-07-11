execute as @e[type=minecraft:player] at @s[scores={xp_checksneak=1..}] run function xp_management:run/check_sneak
execute as @e[type=minecraft:player] at @s[scores={xp_checksneak=1..,xp_checksneakSet=0}] if block ~ ~ ~ minecraft:enchanting_table run function xp_management:run/effect_frist
execute as @e[type=minecraft:player] at @s[scores={xp_checksneak2=1..}] run scoreboard players remove @s xp_checksneak2 1
execute as @e[type=minecraft:player] at @s[scores={xp_checksneak2=2..}] run scoreboard players set @s xp_checksneakSet 1
execute as @e[type=minecraft:player] at @s[scores={xp_checksneak2=..0}] run scoreboard players set @s xp_checksneakSet 0
execute as @e[type=minecraft:player] at @s[tag=xpsneaking,scores={xp_checksneak=1..}] run scoreboard players remove @s xp_checksneak 1
execute as @e[type=minecraft:player] at @s[tag=xpsneaking,scores={xp_checksneakSet=0}] run scoreboard players set @s xp_checksneakspeed 0
execute as @e[type=minecraft:player] at @s[tag=xpsneaking,scores={xp_checksneakSet=0}] run tag @s remove XP_Storeing
execute as @e[type=minecraft:player] at @s[tag=xpsneaking,scores={xp_checksneakSet=0}] run tag @s remove xpgettickcold
execute as @e[type=minecraft:player] at @s[tag=xpsneaking,scores={xp_checksneakSet=0}] run tag @s remove xpsneaking

execute as @e[type=minecraft:player] at @s[tag=xpgettickcold] run scoreboard players remove @s xp_checksneakspeedtick 1
execute as @e[type=minecraft:player] at @s[tag=xpsneaking,tag=!xpgettickcold] run function xp_management:run/speed_set

execute as @e[type=minecraft:player] at @s[tag=xpsneaking,scores={xp_checksneakspeedtick=..0}] if block ~ ~ ~ minecraft:enchanting_table run function xp_management:run/run_store_xp
execute as @e[type=minecraft:player] at @s[scores={xp_checksneakspeedtick=..0}] run tag @s remove xpgettickcold


