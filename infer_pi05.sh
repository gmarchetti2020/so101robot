PYTORCH_ENABLE_MPS_FALLBACK=1 lerobot-record  \
  --robot.type=so101_follower \
  --robot.port=/dev/tty.usbmodem5A7A0578611 \
  --robot.cameras="{ top: {type: opencv, index_or_path: 1, width: 640, height: 480, fps: 30}, gripper: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
  --robot.id=demerzel \
  --display_data=true \
  --dataset.repo_id=gimarchetti/eval_sd101_minerals_pi05\
  --dataset.single_task="Pick the black tourmaline and put it in the green container. Pick the reddish garnet and put it in the blue container. Return to rest position." \
  --dataset.num_episodes=2\
  --dataset.episode_time_s=120 \
  --dataset.push_to_hub=true\
  --policy.path=gimarchetti/gimarchetti/pi05_so101_minerals \
  --policy.device=mps\
  --teleop.type=so101_leader \
  --teleop.port=/dev/tty.usbmodem5A7A0546811 \
  --teleop.id=daneel 
  #--resume=true

