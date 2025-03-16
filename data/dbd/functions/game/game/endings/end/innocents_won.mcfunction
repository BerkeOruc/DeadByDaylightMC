tp @a 336.5 51.00 -450.5

title @a title {"text":"MASUMLAR KAZANDI!","color":"green","bold":true}
title @a subtitle {"text":"Bazı masumlar kaçmayı başardı!","color":"white","bold":true}

scoreboard players set *Game Game 0

execute as @a at @s run function dbd:game/game/endings/end/tags_remove

tag @a add GM_Adventure
tag @a remove GM_Spectator

# Kazanan masumlara puan ekle
execute as @a[tag=Innocent] run scoreboard players add @s Wins 1
execute as @a[tag=Innocent] run scoreboard players add @s Escapes 1

execute as @a at @s run function dbd:lobby/chat/main