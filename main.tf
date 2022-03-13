terraform {

        backend "s3" {
        bucket = "ethiraj07032022"
        key = "terraform.tfstate"
        dynamodb_table = "tf-state-lock" 
        region =  "ap-south-1"
        }
}


#resource "aws_dynamodb_table" "base_dynamo_table" {
#  name           = "tf-state-lock"
#  billing_mode   = "PAY_PER_REQUEST"
#  read_capacity  = 5
#  write_capacity = 5
#  hash_key       = "LOCKID"

#  attribute {
#    name = "LOCKID"
#    type = "S"
#  }

#}
