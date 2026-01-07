PYTORCH_ENABLE_MPS_FALLBACK=1 lerobot-train \
	--dataset.repo_id="gimarchetti/so101-winnie-us7" \
	--policy.type="pi05" \
	--batch_size=4 \
	--steps=30000 \
	--output_dir="outputs/train/pi05_so101_winnie_us7_mps" \
	--job_name=pi05_so101_winnie_us7_mps_bf16 \
	--policy.device=mps \
	--wandb.enable=true \
	--policy.repo_id="gimarchetti/winnie_us7_pi05_policy_mps_bf16" \
	--policy.compile_model=false \
	--policy.gradient_checkpointing=true \
	--policy.pretrained_path=lerobot/pi05_base \
	--policy.dtype=bfloat16 \
	--policy.normalization_mapping='{"ACTION": "MEAN_STD", "STATE": "MEAN_STD", "VISUAL": "IDENTITY"}'

