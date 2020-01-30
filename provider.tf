# Define AWS as our provider
provider "aws" {
  region = "us-east-1"
}


provider "aws" {
  alias   = "source"
  region = "us-east-1"
}

provider "aws" {
  alias   = "dest"
  region = "us-west-2"
}
