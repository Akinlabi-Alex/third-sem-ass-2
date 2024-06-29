variable "bucket_name" {
  description = "static-bucket"
  type        = map(string)
  default = {
    "index.html" = "text/html"
    "style.css"  = "text/css"
    ".png"       = "image/png"
  }
}
