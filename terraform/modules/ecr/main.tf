resource "aws_ecr_repository" "this" {
  name = "node-app-${var.env}"

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    encryption_type = "AES256"
  }

  tags = {
    Environment = var.env
  }
}
