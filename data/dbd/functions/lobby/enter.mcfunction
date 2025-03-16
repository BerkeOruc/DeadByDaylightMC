tag @s add Enter

title @s title {"text":" "}
title @s subtitle {"text":"Hoş Geldiniz!","color":"green","bold":true}

tp @s 336.5 51.00 -450.5

team join Player @s
function dbd:lobby/chat/main

# Liderlik tablosu için gerekli scoreboard'ları oluştur
scoreboard objectives add Wins dummy {"text":"🏆 Galibiyetler","color":"gold"}
scoreboard objectives add Escapes dummy {"text":"🏃 Kaçışlar","color":"green"}
scoreboard objectives add Kills dummy {"text":"🔪 Öldürmeler","color":"red"}
scoreboard objectives add TempWins dummy
scoreboard objectives add TempEscapes dummy
scoreboard objectives add TempKills dummy
scoreboard objectives setdisplay sidebar Wins