lerobot-record \
    --robot.type=so101_follower \
    --robot.port=/dev/tty.usbmodem5A7A0578611 \
    --robot.id=demerzel \
    --robot.cameras="{top: {type: opencv, index_or_path: 1, width: 640, height: 480, fps: 30}, gripper: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}}" \
    --teleop.type=so101_leader \
    --teleop.port=/dev/tty.usbmodem5A7A0546811 \
    --teleop.id=daneel \
    --display_data=true \
    --dataset.repo_id=gimarchetti/sd101-minerals-leo \
    --dataset.episode_time_s=60 \
    --dataset.num_episodes=50 \
    --dataset.single_task="Pick the black tourmaline and put it in the green container. Pick the reddish garnet and put it in the blue container. Return to rest position." \
    --resume=true

