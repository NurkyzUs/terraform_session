locals {
    common_tags = {
        environment = var.env
        project = "${var.env}-wordpress"
        team = "devops"
         owner = "Nur"
    }
}