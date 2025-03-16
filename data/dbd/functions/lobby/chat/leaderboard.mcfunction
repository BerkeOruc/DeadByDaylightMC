tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}

tellraw @s {"text":"Liderlik Tablosu","color":"gold","bold":true}
tellraw @s {"text":"\nEn İyi Oyuncular:","color":"yellow"}

# En çok galibiyeti olan oyuncuyu göster
tellraw @s {"text":"\nEn Çok Galibiyet:","color":"gold"}
execute as @a run scoreboard players operation @s TempWins = @s Wins
execute as @a run scoreboard players operation @s TempWins > @a[limit=1] TempWins
execute as @a[scores={TempWins=1..}] run tellraw @a [{"selector":"@s"},{"text":": ","color":"white"},{"score":{"name":"@s","objective":"TempWins"},"color":"gold"},{"text":" galibiyet","color":"white"}]

# En çok kaçışı olan oyuncuyu göster
tellraw @s {"text":"\nEn Çok Kaçış:","color":"green"}
execute as @a run scoreboard players operation @s TempEscapes = @s Escapes
execute as @a run scoreboard players operation @s TempEscapes > @a[limit=1] TempEscapes
execute as @a[scores={TempEscapes=1..}] run tellraw @a [{"selector":"@s"},{"text":": ","color":"white"},{"score":{"name":"@s","objective":"TempEscapes"},"color":"green"},{"text":" kaçış","color":"white"}]

# En çok öldürmesi olan oyuncuyu göster
tellraw @s {"text":"\nEn Çok Öldürme:","color":"red"}
execute as @a run scoreboard players operation @s TempKills = @s Kills
execute as @a run scoreboard players operation @s TempKills > @a[limit=1] TempKills
execute as @a[scores={TempKills=1..}] run tellraw @a [{"selector":"@s"},{"text":": ","color":"white"},{"score":{"name":"@s","objective":"TempKills"},"color":"red"},{"text":" öldürme","color":"white"}]

tellraw @s [{"text":"\n<-- Geri","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function dbd:lobby/chat/information/main"}}]