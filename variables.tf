variable "name" {
  description = "Desired cluster name"
  type        = string
}

variable "efs_transition_to_ia" {
  description = "EFS Transition to Infrequent Access policy"
  type        = string
  default     = "AFTER_14_DAYS"
}
