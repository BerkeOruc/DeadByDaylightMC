tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s [{"text":"Dead by Daylight","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Minecraft için Dead by Daylight mini oyunu"}}},{"text":"\n"}]

tellraw @s [{"text":"Müzik: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","value":{"text":"Berke Oruç","color":"red"}}},{"text":"Açık","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/tag @s remove mus_off"}},{"text":" / ","color":"gray"},{"text":"Kapalı","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/tag @s add mus_off"}}]

tellraw @s {"text":"Bilgi","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function dbd:lobby/chat/information/main"}}
tellraw @s {"text":"Liderlik Tablosu","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/function dbd:lobby/chat/leaderboard"}}
execute if entity @s[tag=moderator] run tellraw @s {"text":"Oyun Ayarları","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function dbd:lobby/chat/settings/main"}}
tellraw @s[tag=!Ready] {"text":"Hazır","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function dbd:lobby/chat/ready/i_m_ready"}}
tellraw @s[tag=Ready] {"text":"Hazır Değil","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function dbd:lobby/chat/ready/i_not_ready"}}
tellraw @s {"text":"Oyun başlamak için tüm oyuncular hazır olmalı","color":"gray","italic":true}