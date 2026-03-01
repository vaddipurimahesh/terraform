variable "instances"{
    type = set
    default = ["mongodb", "catalogue", "frontend"]
}

variable "zone_id" {
    default = "Z03714571QYT3HQF455OE"
}

variable "domain_name"{
    default = "godevops.in"
}