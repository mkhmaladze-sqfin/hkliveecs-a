resource "aws_launch_configuration" "as_conf" {
   associate_public_ip_address = false
    ebs_optimized               = false
    enable_monitoring           = true
    iam_instance_profile        = "arn:aws:iam::640003498020:instance-profile/ecsInstanceRole"
 #   id                          = "EC2ContainerService-hkliveecs-a-EcsInstanceLc-XQ7v5gc9KD6g"
    image_id                    = "ami-08010debc3a6c3b27"
    instance_type               = "t3.medium"
    name                        = "EC2ContainerService-hkliveecs-a-EcsInstanceLc-XQ7v5gc9KD6g"
    security_groups             = [
        "sg-0805d413d86595fb4",
    ]
    user_data                   =  <<-EOT
  #!/bin/bash
        cat <<'EOF' >> /etc/ecs/ecs.config
        ECS_CLUSTER=${local.name}
        echo ECS_BACKEND_HOST= 
        EOF
      EOT

    root_block_device {
        delete_on_termination = false
        encrypted             = false
        iops                  = 0
        throughput            = 0
        volume_size           = 50
        volume_type           = "gp2"
    }
}