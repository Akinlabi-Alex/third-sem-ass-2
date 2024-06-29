resource "aws_s3_bucket" "static-bucket" {
  bucket= "static-bucket"
  force_destroy = true
}


resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.static-bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}


resource "aws_s3_object" "mysite" {
 
    bucket=aws_s3_bucket.static-bucket.bucket
   for_each = fileset("modules/s3_bucket/mysite/", "**/*.*") 
   key = each.value
   source = "modules/s3_bucket/mysite/${each.value}"
   content_type = lookup(var.bucket_name, each.value, "application/octet-stream")
}