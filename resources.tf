resource "aws_instance" "traditinalwedding" {
  ami = var.ami_id
  instance_type = var.t2.mirco
  tags = merge(local.common_tags, local.test)

}

resource "aws_instance" "traditinalwedding1" {
  ami = var.ami_id
  instance_type = var.instance_typ
  tags = {
    name = ""
  }

}

# local variables block
locals {
  common_tags = {
    owner = "ebelestella4@gmail.com"
    createdby = "ebele"
  }
  test = {
    env = "test"
  }
}
