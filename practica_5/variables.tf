variable "virginia_cidr" {
    description = "CIDR Viginia"
    type       = string
    sensitive = true
}

variable "ohio_cidr" {
    description = "CIDR Ohio"
    type       = string
    sensitive = true
}

variable "subnets" {
    description = "Subnets"
    type        = map(string)
}


variable "tags" {
    description = "Tags del proyecto"
    type        = map(string)  
}

variable "amis" {
    description = "AMIs por region"
    type        = map(string)  
}