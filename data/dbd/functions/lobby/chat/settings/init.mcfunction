# Varsayılan değerleri ayarla
scoreboard objectives add Settings dummy
scoreboard objectives add Moderator dummy

# Ayarların varsayılan değerleri
scoreboard players set *Generator_Time Settings 60
scoreboard players set *Required_Generators Settings 5
scoreboard players set *Start_Time Settings 12
scoreboard players set *Escape_Time Settings 5
scoreboard players set *Murderer_Speed Settings 2

# Moderatör yetkisi kontrolü için tag
tag @a[scores={Moderator=1..}] add moderator