lerobot-teleoperate \
    --robot.type=so101_follower \
    --robot.port=/dev/tty.usbmodem5A7A0578611 \
    --robot.id=demerzel \
    --robot.cameras="{gripper: {type: opencv, index_or_path: 0, width: 640, height: 480, fps: 30}, right: {type: opencv, index_or_path: 1, width: 640, height: 480, fps: 30}, left: {type: opencv, index_or_path: 2, width: 640, height: 480, fps: 30}}" \
    --teleop.type=so101_leader \
    --teleop.port=/dev/tty.usbmodem5A7A0546811 \
    --teleop.id=daneel \
    --display_data=true
