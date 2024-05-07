dataroot1=./data
mkdir ${dataroot1}
aws s3 cp s3://ec2-sd-images/updated-VITON-HD ${dataroot1}

unzip ./data/updated-VITON-HD -d ${dataroot1}
rm -rf ./data/updated-VITON-HD

head -5 data/VITON-HD/subtrain_20.txt > data/VITON-HD/subtrain_1.txt
head -5 data/VITON-HD/subtest_20.txt > data/VITON-HD/subtest_1.txt

aws s3 cp s3://ec2-sd-images/VITON-HD-captions/train_cloth_caption.zip data/VITON-HD/train/
aws s3 cp s3://ec2-sd-images/VITON-HD-captions/test_cloth_caption.zip data/VITON-HD/test/

unzip ./data/VITON-HD/train/train_cloth_caption.zip -d ./data/VITON-HD/train/
unzip ./data/VITON-HD/test/test_cloth_caption.zip -d ./data/VITON-HD/test/

aws s3 cp s3://ec2-sd-images/ootd_weight/checkpoint-2000.zip ./checkpoints
tar -xvzf  ./checkpoints/checkpoint-2000.zip -C ./checkpoints/