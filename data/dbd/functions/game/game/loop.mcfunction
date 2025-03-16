execute if score *Game_Stady Game matches ..3 as @a[tag=Innocent,tag=GM_Adventure] at @s run title @s actionbar [{"text":"❤ Can: ","color":"red"},{"score":{"name":"@s","objective":"Game_Life"},"color":"gold"}]
execute if score *Game_Stady Game matches ..3 as @a[tag=Innocent,tag=GM_Spectator] at @s run title @s actionbar [{"text":"Öldürüldün!","color":"red","bold":true}]

execute as @e[type=armor_stand,tag=Generator] at @s run particle dust 0.082 1 0 1 ~ ~0.5 ~ 0 0.1 0 1 10 normal @a
execute as @a[tag=Murderer] at @s run particle dust 1 0 0 1 ~ ~ ~ 0.4 1 0.4 1 10 normal @a[tag=!Murderer]

function dbd:game/game/clicks/loop
function dbd:game/game/chase/loop
function dbd:game/game/endings/loop
function dbd:game/game/players/loop
execute if score *Game_Stady Game matches 1..2 run function dbd:game/game/generators/loop

execute as @a[tag=Innocent,tag=GM_Adventure] at @s if score @s Game_Life matches ..0 run function dbd:game/game/players/killed

# Liderlik tablosunu güncelle
execute as @a[tag=Murderer] if score @s Game matches 2 run scoreboard players add @s Kills 1
execute as @a[tag=Innocent] if score @s Game matches 2 run scoreboard players add @s Escapes 1
execute as @a[tag=Innocent,tag=!GM_Spectator] if score @s Game matches 2 run scoreboard players add @s Wins 1