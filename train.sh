accelerate launch train.py \
    --pretrained_model_name_or_path="runwayml/stable-diffusion-v1-5" \
    --mixed_precision="no" \
    --output_dir="./output/logs/train_ootd" \
    --dataset_name="SaffalPoosh/VITON-HD-test" \
    --resolution="512" \
    --learning_rate="1e-5" \
    --train_batch_size="1" \
    --dataroot="./data/VITON-HD" \
    --train_data_list="train_pairs.txt" \
    --num_train_epochs="100" \
    --checkpointing_steps="1000" \
    --use_8bit_adam \
    --gradient_checkpointing_garm \
    --validation_steps="100" \
    --inference_steps="50" \
    --log_grads \
    --report_to="wandb"\
    --seed="424" \
    --clip_grad_norm \
    --gradient_accumulation_steps="4"  \
    --vton_unet_path="runwayml/stable-diffusion-v1-5"  \
    --garm_unet_path="runwayml/stable-diffusion-v1-5"  \
    --validation_data_list="subtrain_1.txt" \
    --test_data_list="subtest_1.txt" \
    #--tracker_project_name="" \
    #--tracker_entity="" \