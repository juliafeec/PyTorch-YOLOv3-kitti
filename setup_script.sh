### Clone repo and install packages

#source activate pytorch_p36
#git clone https://github.com/juliafeec/PyTorch-YOLOv3-kitti.git
#cd PyTorch-YOLOv3-kitti/
#pip install -r requirements.txt

### Download dataset and convert labels to COCO format
#mkdir ~/kitti
#cd ~/kitti
# download data_object_label_2.zip and data_object_image_2.zip from http://www.cvlibs.net/datasets/kitti/eval_object.php to ~/kitti
#cp ~/PyTorch-YOLOv3-kitti/data/kitti.names ~/kitti
#unzip data_object_label_2.zip
#unzip data_object_image_2.zip
#mkdir ~/kitti/training/labels2coco/
#python ~/PyTorch-YOLOv3-kitti/label_transform/kitti2coco-label-trans.py

### Download pretrained weights (ImageNet) for initialization
#cd ~/PyTorch-YOLOv3-kitti/checkpoints/
#wget https://pjreddie.com/media/files/darknet53.conv.74

### Train on kitti DB
#cd ~/PyTorch-YOLOv3-kitti
#python train.py --epochs 250 &> large_train.log

### Test on sample images
#cd ~/PyTorch-YOLOv3-kitti
#python detect.py --image_folder data/samples --weights_path checkpoints/kitti_best.weights
