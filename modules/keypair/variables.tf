variable "key_algorithm" {
    description = "this is for key algorithm"
    default = "RSA"
}
variable "rsa_bits_size" {
    description = "this is the size of the rsa_bits"
    default = 2048
  
}
variable "the_key_name" {
  
}
variable "pem_file_name" {
  
}
variable "pem_file_permission" {
    default = 400
  
}