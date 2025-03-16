tag @a add Player
tag @r add Murderer
tag @a[tag=Murderer] remove Player

tag @r[tag=Player] add Player_1
tag @r[tag=Player_1] add Innocent
tag @a[tag=Player_1] remove Player

tag @r[tag=Player] add Player_2
tag @r[tag=Player_2] add Innocent
tag @a[tag=Player_2] remove Player

tag @r[tag=Player] add Player_3
tag @r[tag=Player_3] add Innocent
tag @a[tag=Player_3] remove Player

tag @r[tag=Player] add Player_4
tag @r[tag=Player_4] add Innocent
tag @a[tag=Player_4] remove Player

tag @r[tag=Player] add Player_5
tag @r[tag=Player_5] add Innocent
tag @a[tag=Player_5] remove Player

title @a times 0t 5s 10t
title @a[tag=Murderer] title {"text":"Sen Katilsin!","color":"red"}
title @a[tag=Murderer] subtitle {"text":"Tüm masumları öldür!","color":"white"}

title @a[tag=Innocent] title {"text":"Sen Masumsun!","color":"green"}
title @a[tag=Innocent] subtitle {"text":"Jeneratörleri tamir et ve kaç!","color":"white"}

function dbd:game/starting/positions

execute store result score *All_Innocents Game if entity @a[tag=Innocent]