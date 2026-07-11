execute at @s run clear @s minecraft:golden_apple 1
execute at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:enchanted_golden_apple"}}
execute at @s run experience add @s -1395
particle minecraft:totem_of_undying ~ ~ ~ 1.5 1.5 1.5 0.3 70 force
particle minecraft:totem_of_undying ~ ~ ~ 0.5 0.1 0.5 0.1 40 force
particle minecraft:sculk_soul ~ ~ ~ 1 0.7 1 0.1 10 force
playsound minecraft:particle.soul_escape player @s ^ ^ ^ 3.5 0.8
playsound minecraft:block.beacon.power_select player @s ^ ^ ^ 0.08 1
execute store result score @s xp_toto run data get entity @s XpLevel
function xp_management:run/check_have
