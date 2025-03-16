# Katil hızını ayarla
execute if score *Murderer_Speed Settings matches 1 run effect give @s slowness 3 1 true
execute if score *Murderer_Speed Settings matches 2 run effect give @s slowness 3 0 true
execute if score *Murderer_Speed Settings matches 3 run effect give @s speed 3 0 true

# Hız durumunu göster
execute if score *Murderer_Speed Settings matches 1 run title @s actionbar {"text":"Hız: Yavaş","color":"red"}
execute if score *Murderer_Speed Settings matches 2 run title @s actionbar {"text":"Hız: Normal","color":"yellow"}
execute if score *Murderer_Speed Settings matches 3 run title @s actionbar {"text":"Hız: Hızlı","color":"green"}