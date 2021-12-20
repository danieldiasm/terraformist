include {
    path = find_in_parent_folders()
}

terraform {
    source = "../../../../module_sg"
}

# REVIEW -These rules are very pemissive, be careful.
inputs = {
    security_group_name = "alb_sg"
    vpc_id = "SOME-VPC-ID" #CHANGE IT!

    security_group_rules = {
        rule01 = {
            description = "HTTP allow ingress" # REVIEW
            direction = "ingress"
            protocol = "tcp"
            from_port = 80
            to_port = 80
            addresses = {
                type = "cidr_blocks",
                cidr_blocks = ["0.0.0.0/0"]
            }
        },
        rule02 = {
            description = "HTTPS allow ingress" # REVIEW
            direction = "ingress"
            protocol = "tcp"
            from_port = 443
            to_port = 443
            addresses = {
                type = "cidr_blocks",
                cidr_blocks = ["0.0.0.0/0"]
            }
        },
        rule03 = {
            description = "Allow egress" # REVIEW
            direction = "egress"
            protocol = "-1"
            from_port = 0
            to_port = 0
            addresses = {
                type = "cidr_blocks",
                cidr_blocks = ["0.0.0.0/0"]
            }
        },
    }
}