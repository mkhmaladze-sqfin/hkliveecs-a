
resource "aws_autoscaling_group" "group" {
 capacity_rebalance        = false
    default_cooldown          = 300
    default_instance_warmup   = 0
    desired_capacity          = 0
    enabled_metrics           = []
    health_check_grace_period = 0
    health_check_type         = "EC2"
 #   id                        = "EC2ContainerService-hkliveecs-a-EcsInstanceAsg-H4O0NPOLXJKT"
    launch_configuration      = "EC2ContainerService-hkliveecs-a-EcsInstanceLc-XQ7v5gc9KD6g"
    load_balancers            = []
    max_instance_lifetime     = 0
    max_size                  = 2
    metrics_granularity       = "1Minute"
    min_size                  = 0
    name                      = "EC2ContainerService-hkliveecs-a-EcsInstanceAsg-H4O0NPOLXJKT"
   # predicted_capacity        = 0
    protect_from_scale_in     = false
    service_linked_role_arn   = "arn:aws:iam::640003498020:role/aws-service-role/autoscaling.amazonaws.com/AWSServiceRoleForAutoScaling"
    suspended_processes       = []
    target_group_arns         = []
    termination_policies      = []
    # vpc_zone_identifier       = [
    #     "subnet-076822679e7dcd593",
    #     "subnet-098c0636967911a84",
    # ]
    # warm_pool_size            = 0

    tag {
        key                 = "Description"
        propagate_at_launch = true
        value               = "This instance is the part of the Auto Scaling group which was created through ECS Console"
    }
    tag {
        key                 = "Name"
        propagate_at_launch = true
        value               = "ECS Instance - EC2ContainerService-hkliveecs-a"
    } 
 
}

