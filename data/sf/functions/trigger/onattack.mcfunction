#弓で殴った際にAttack消去
execute if entity @a[nbt=!{SelectedItem:{id:"minecraft:bow"}}] run function sf:combat/melee/use_weapon
#execute if entity @a[nbt=!{SelectedItem:{id:"minecraft:bow"}},nbt={SelectedItem:{tag:{Breakable:1b}}}] run function sf:items/durability