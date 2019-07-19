# PyTorch-YOLOv3-Kitti
Minimal implementation of YOLOv3 in PyTorch.
And Training from Kitti dataset

### This repo is forked from [packyan](https://github.com/packyan/PyTorch-YOLOv3-kitti) and based on the PyTorch YOLOv3 implementation of [eriklindernoren](https://github.com/eriklindernoren/PyTorch-YOLOv3)

# Setup on EC2:
This was tested using a **g3s.xlarge** EC2 instance (with a NVIDIA Tesla M60), with the **Deep Learning AMI (Ubuntu) Version 23.1 - ami-07262a45de118922e**.


Run ./setup_script.sh (https://github.com/juliafeec/PyTorch-YOLOv3-kitti/blob/master/setup_script.sh) to install requirements; set up the DB and transform labels to the COCO format; download initial weights and run train / test. 

```
wget https://raw.githubusercontent.com/juliafeec/PyTorch-YOLOv3-kitti/master/setup_script.sh
chmod +x setup_script.sh
./startup_script.sh
```

Kitti DB files will need to be downloaded manually to **~/kitti** after registering with your email:
http://www.cvlibs.net/download.php?file=data_object_image_2.zip

http://www.cvlibs.net/download.php?file=data_object_label_2.zip


## Paper
### YOLOv3: An Incremental Improvement
_Joseph Redmon, Ali Farhadi_ <br>

**Abstract** <br>
We present some updates to YOLO! We made a bunch
of little design changes to make it better. We also trained
this new network that’s pretty swell. It’s a little bigger than
last time but more accurate. It’s still fast though, don’t
worry. At 320 × 320 YOLOv3 runs in 22 ms at 28.2 mAP,
as accurate as SSD but three times faster. When we look
at the old .5 IOU mAP detection metric YOLOv3 is quite
good. It achieves 57.9 AP50 in 51 ms on a Titan X, compared
to 57.5 AP50 in 198 ms by RetinaNet, similar performance
but 3.8× faster. As always, all the code is online at
https://pjreddie.com/yolo/.

[[Paper]](https://pjreddie.com/media/files/papers/YOLOv3.pdf) [[Original Implementation]](https://github.com/pjreddie/darknet)


## Credit
```
@article{yolov3,
  title={YOLOv3: An Incremental Improvement},
  author={Redmon, Joseph and Farhadi, Ali},
  journal = {arXiv},
  year={2018}
}
```
