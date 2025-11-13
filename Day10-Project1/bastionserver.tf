resource "aws_instance" "back" {
  ami                    = var.ami
  instance_type          = var.instance-type     # 🔹 Use underscore (_) not hyphen (-)
  key_name               = aws_key_pair.books_key.key_name  # 🔹 Matches your keypair.tf resource name
  subnet_id              = aws_subnet.pub1.id
  vpc_security_group_ids = [aws_security_group.bastion-host.id]

  tags = {
    Name = "bastion-server"
  }
}
