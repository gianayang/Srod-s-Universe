waves = ds_list_create()

ds_list_add(waves,[0, obj_enemy, 0, 0])
ds_list_add(waves,[0, obj_enemy, 0, 10])
ds_list_add(waves,[0, obj_enemy, 0, 20])
ds_list_add(waves,[0, obj_enemy2, 1, 30])


ds_list_add(waves, [1, obj_enemy, 0, 0])
ds_list_add(waves, [1, obj_enemy, 0, 10])
ds_list_add(waves, [1, obj_enemy2, 0, 20])



ds_list_add(waves, [2, obj_enemy, 0, 0])
ds_list_add(waves, [2, obj_enemy, 1, 150])
ds_list_add(waves, [2, obj_enemy2, 1,150])



spawn[0, 0] = 3204
spawn[0, 1] = 231
spawn[1, 0] = 4500
spawn[1, 1] = 326