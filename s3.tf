resource "aws_s3_bucket" "sonam-terraform-first-bucket" {
  bucket = "my-tf-sonam-terraform-bucket"

  tags = {
    Name        = "My first bucket"
    Environment = "just test"
  }
}

resource "aws_s3_object" "myobject" {
  bucket = aws_s3_bucket.sonam-terraform-first-bucket.id
  key    = "my_first_file.txt"
  source = local_file.myfile.filename
}