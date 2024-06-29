provider "aws" {
  region = "us-east-1"
}

module "aws_s3_bucket" {
  source = "./modules/s3_bucket"
}
module "aws_cloudfront" {
  source = "./modules/cloudfront"
  s3-bucket = module.aws_s3_bucket
  certificate_arn = module.aws_acm_certificate.certificate_arn
  domain_name = "var_domain.com"
}


module "aws_acm_certificate" {
  source = "./modules/acm_certificate"
  domain_name = "var_domain.com"
  aws_route53_zone_id = "Z2FDTNDATAQYW2"
}

module "route53" {
  source = "./modules/route53"
  domain_name = "var_domain.com"
  env = "dev"
  cloudfront_domain_name = "d111111abcdef8.cloudfront.net"
  cloudfront_hosted_zone_id = "Z2FDTNDATAQYW2"
  
}
