terraform {
  backend "s3" {
    bucket = "my-test-buckett007"
    key    = "terraform.tfstate"
    region = "us-east-1"
    use_lockfile="true"
  }
}