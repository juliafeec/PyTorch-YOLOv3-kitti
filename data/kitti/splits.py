with open("train_large.txt", "w") as f:
    for i in range(6000):
         f.write("~/kitti/training/image_2/{:06d}.png\n".format(i))

with open("val_large.txt", "w") as f:
    for i in range(6000,7481):
         f.write("~/kitti/training/image_2/{:06d}.png\n".format(i))
