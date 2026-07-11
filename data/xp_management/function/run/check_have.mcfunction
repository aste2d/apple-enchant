execute store result score @s xp_toto run data get entity @s XpLevel
execute store result score @s xp_have_golden_apple run clear @s minecraft:golden_apple 0
execute at @s[scores={xp_have_golden_apple=..0}] run tag @s add XP_StoreNOT
execute at @s[scores={xp_toto=..29}] run tag @s add XP_StoreNOT
#execute at @s[tag=XP_StoreNOT] run stopsound @s
#execute at @s[tag=XP_StoreNOT] run playsound minecraft:block.end_portal_frame.fill player @s ^ ^ ^ 0.3 0.5
execute at @s[tag=XP_StoreNOT] run tag @s remove XP_Storeing
execute at @s[tag=XP_StoreNOT] run tag @s remove XP_StoreNOT


#execute at @s[tag=XP_StoreNOT] run tellraw @s {"text":"\u00A7e您已經沒有經驗了或是小於儲存經驗數量,或者是你沒有金蘋果"}
#execute at @s[tag=XP_StoreNOT] run tellraw @s {"text":"\u00A7e\u60a8\u5df2\u7d93\u6c92\u6709\u7d93\u9a57\u4e86\u6216\u662f\u5c0f\u65bc\u5132\u5b58\u7d93\u9a57\u6578\u91cf,\u6216\u8005\u662f\u4f60\u6c92\u6709\u91d1\u860b\u679c"}
