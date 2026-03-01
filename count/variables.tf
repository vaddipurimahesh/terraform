variable "instances"{
    type = list
    default = ["mongodb", "catalogue", "cart", "user", "rabbitmq", "payment", "shipping", "mysql","redis", "frontend"]
}

variable "zone_id" {
    default = "Z03714571QYT3HQF455OE"
}

variable "domain_name"{
    default = "godevops.in"
}