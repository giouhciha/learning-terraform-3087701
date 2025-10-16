variable "virginia_cidr" {
    description = "CIDR Viginia"
    type       = string
    sensitive = true
}

variable "subnets" {
    description = "Subnets"
    type        = list(string)
}

#variable "public_subnet" {
#    description = "Public Subnet"
#    type        = string
#}

#variable "private_subnet" {
#    description = "Private Subnet"
#    type        = string
#}


#variable "ohio_cidr" {
#}