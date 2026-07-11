
execute at @s[scores={xp_toto=30..,xp_have_golden_apple=1..}] run tag @s add XP_Storeing
execute at @s[tag=XP_Storeing] run function xp_management:run/check_store_xp
