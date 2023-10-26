# Defines a new AWS key pair resource
resource "aws_key_pair" "simple_app_java_keypair" {
  # Defines the key name that will be used in AWS
  key_name   = "simple-app-java-keypair"

  # Defines the public key that will be used for SSH authentication
  public_key = file("~/.ssh/id_rsa.pub")
}
