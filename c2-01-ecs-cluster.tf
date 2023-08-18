
resource "aws_ecs_cluster" "cluster" {
  name = "hkliveecs-a"
  setting {
        name  = "containerInsights"
        value = "enabled"
    }

}