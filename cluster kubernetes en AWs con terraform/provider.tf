provider "aws" {
  region                  = "us-east-1"
  shared_credemtials_file = "/.aws/credentials"
  shared_config_files     = ["/.aws/config"]
  profile                 = "personal"


}