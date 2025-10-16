variable "virginia_cidr" {
    description = "CIDR Viginia"
    type       = string
    sensitive = true
}

variable "subnets" {
    description = "Subnets"
    type        = list(string)
}

variable "tags" {
    description = "Tags del proyecto"
    type        = map(string)  
}