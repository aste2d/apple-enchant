say pass
execute store result score @s xp_toto run data get entity @s XpTotal
execute store result score @s xp_have_golden_apple run clear @s minecraft:golden_apple 0
execute at @s run function xp_management:run/check_store_xp



