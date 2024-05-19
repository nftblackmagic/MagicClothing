export MODEL_NAME="runwayml/stable-diffusion-v1-5"
export DATASET_NAME="lambdalabs/naruto-blip-captions"

accelerate launch  train_text_to_image.py \
    --pretrained_model_name_or_path=$MODEL_NAME \
    --dataset_name=$DATASET_NAME \
    --dataroot="/workspace/MagicClothing/data/VITON-HD" \
    --train_data_list="train_pairs.txt"  \
    --validation_data_list="subtrain_1.txt"  \
    --use_ema \
    --mixed_precision="fp16"  \
    --resolution=512   \
    --center_crop  \
    --random_flip \
    --train_batch_size=30 \
    --gradient_accumulation_steps=4 \
    --gradient_checkpointing \
    --max_train_steps=15000 \
    --learning_rate=1e-05 \
    --max_grad_norm=1 \
    --lr_scheduler="constant" \
    --lr_warmup_steps=0 \
    --output_dir="output"  \
    --tracker_project_name="train_controlnet" \
    --tracker_entity="anzhangusc" \
    --validation_steps="10" \
    --inference_steps="50" \
    --log_grads \
    --report_to="wandb"  \
    --seed="424"  \
    --ref_path="data/ref_unet.safetensors"  \
