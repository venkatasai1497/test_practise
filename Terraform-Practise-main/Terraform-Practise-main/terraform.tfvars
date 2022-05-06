aws_region   = "us-east-1"
project_name = "laa-terraform"
secret_key   = "sdklfhvnisdomnosdbnsovasdsnokdhihdsnv"
accesskey    = "sjdfdosfnsdofhsdgsdsfds"

vpc_cidrs = "10.123.0.0/16"
public_cidrs = [
  "10.123.1.0/24",
  "10.123.2.0/24"
]
accessip = ["0.0.0.0/0"]

key_name        = "tf_key"
# public_key_path = "/c/Users/Tirumalasetty.Harish/.ssh/id_rsa.pub"
instance_type   = "t2.micro"
instance_count  = 2

# bucketname = "bucket3232"