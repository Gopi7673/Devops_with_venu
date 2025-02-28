provider "aws" {
  
  region = "us-east-1"
}

resource "aws_key_pair" "key-pair" {
 key_name = "Gopi"

 public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCcDkLZbfDZoVFZBrUEiJs7+/caSMAyeT7aBB9PYifnhQjjuOqGLgFiX4ZaP0/TnvuEoJRkH5Ho2DNckkqRHjJunyzLLehSW5W19tGU0Kv716gr3ovuo5MqHHXhU/uG0b1TlOBpBsVa5my8PsTsPxdpdaSXMIoGNbP6PS1h6kJcpaPUgw3lDxUd3zgqlc61uwWsCRjSTFIzSrXUKLFnRxua1QX+Cxh6Yh6TeRwZedN3H+eku4x2nVc+4OWbJ4wPcXaZCaWWJTt2lINxW3l9pXv2MnvYFV86wPpB0HGNoPDO9rgDmMRsREIXec81qDhmPeNI/8dU1TOXyOg8qYKYsM6yX/hYtYGX88SwUvnYfvpyA3XOmEyFLSg0YNsNCRtzvIof1bKS4wagJuH6aVZkfPYwwL8RJ65NcLS1HkZbKSYaUDSG6FwUdUS1ns5oCaqr9qBU5p5utbdWjqyiV6gLvKCpTYeDsmXZJ5fwhRFDDq0pvzP6/tFymAa5MBBJieEvikU= gopib@GOPI"

}

resource "aws_instance" "gopiserver" {
  ami = "ami-05b10e08d247fb927"
  instance_type = "t2.micro"
  key_name = "Gopi"

   tags = {
    Name = "gopiserver"
  }
 }
