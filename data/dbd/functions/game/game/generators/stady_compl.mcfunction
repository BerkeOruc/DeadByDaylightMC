tag @s add Done
playsound entity.player.levelup master @a[distance=..1.5] ~ ~ ~ 0.7

tellraw @a[tag=Innocent] [{"text":"[","color":"dark_green","bold":true},{"text":" ! ","color":"green","bold":true},{"text":"] ","color":"dark_green","bold":true},{"text":"Bir jeneratör tamir edildi!","color":"green","bold":false}]

scoreboard players add *Generators_Done Game 1
scoreboard players add *Min Game_Time 1
execute if score *Generators_Done Game matches 5.. run function dbd:game/game/escape/escape_start