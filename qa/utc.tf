provider "aws" {
    region = "us-east-1"
}
module "key_pair" {
    source = "../modules/keypair"
    pem_file_name = "qakeytest.pem"
    the_key_name = "qakeytest.pem"
}