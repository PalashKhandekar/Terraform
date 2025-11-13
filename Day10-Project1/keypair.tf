# Generate a new SSH key pair (private + public)
resource "tls_private_key" "generated_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Create the key pair in AWS using the public key
resource "aws_key_pair" "books_key" {
  key_name   = "Books-key"
  public_key = tls_private_key.generated_key.public_key_openssh
}

# Save the private key locally as a .pem file
resource "local_file" "private_key_pem" {
  content              = tls_private_key.generated_key.private_key_pem
  filename             = "E:/Terraform/Terraform/Day10-Project1-Books/Books-key.pem"
  file_permission      = "0600"
  directory_permission = "0700"
}

# Optional outputs
output "key_pair_name" {
  value = aws_key_pair.books_key.key_name
}

output "private_key_path" {
  value = local_file.private_key_pem.filename
}
