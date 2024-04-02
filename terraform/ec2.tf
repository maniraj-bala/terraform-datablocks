data "aws_ami" "dev-testing" {
  most_recent = true
  owners      = ["self"]
  filter {
    name   = "name"
    values = var.value
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.dev-testing.id
  instance_type = var.machinetype
  key_name      = "devopsresearch&learn"

  tags = {
    Name = "HelloWorld"
  }
}



