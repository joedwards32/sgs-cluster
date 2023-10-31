# Create EFS file system for task data persistence
resource "aws_efs_file_system" "sgs" {
  throughput_mode = "elastic"

  lifecycle_policy {
    transition_to_ia = var.efs_transition_to_ia
    #transition_to_primary_storage_class = "AFTER_1_ACCESS"
  }

  tags = {
    Name = "efs-sgs-${var.name}"
  }
}

# Create Targets for EFS file systems 
resource "aws_security_group" "efs" {
  name        = "sgs-efs-target"
  description = "Control EFS traffic"
  vpc_id      = aws_vpc.sgs.id
}

resource "aws_security_group" "efs_clients" {
  name        = "sgs-efs-clients"
  description = "SGS EFS Clients"
  vpc_id      = aws_vpc.sgs.id
}

resource "aws_security_group_rule" "efs_ingress" {
  security_group_id        = aws_security_group.efs.id
  type                     = "ingress"
  from_port                = 2049
  to_port                  = 2049
  protocol                 = "TCP"
  source_security_group_id = aws_security_group.efs_clients.id
}

# Create Mount Targets
resource "aws_efs_mount_target" "subnets" {
  file_system_id  = aws_efs_file_system.sgs.id
  subnet_id       = aws_subnet.sgs_public.id
  security_groups = [aws_security_group.efs.id] 
}
