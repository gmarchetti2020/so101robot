PYTORCH_ENABLE_MPS_FALLBACK=1 lerobot-train \
	--dataset.repo_id="gimarchetti/sd101-minerals-leo-3" \
	--policy.type="pi05" \
	--batch_size=4 \
	--steps=30000 \
	--output_dir="outputs/train/pi05_sd101_minerals_leo_3" \
	--job_name=pi05_sd101_minerals_leo_3_mps_bf16 \
	--policy.device=mps \
	--wandb.enable=true \
	--policy.repo_id="gimarchetti/pi05_so101_policy_mps_bf16" \
	--policy.compile_model=false \
	--policy.gradient_checkpointing=true \
	--policy.pretrained_path=lerobot/pi05_base \
	--policy.dtype=bfloat16 \
	--policy.normalization_mapping='{"ACTION": "MEAN_STD", "STATE": "MEAN_STD", "VISUAL": "IDENTITY"}'

