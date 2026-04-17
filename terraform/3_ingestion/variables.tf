variable "aws_region" {
  description = "AWS region for Lambda, API Gateway, IAM, CloudWatch, etc."
  type        = string
}

# S3 API calls must use the bucket's home region or you get PermanentRedirect (301).
variable "s3_vectors_region" {
  description = "Region where the alex-vectors bucket lives. Defaults to aws_region. Set explicitly if the bucket already exists elsewhere (see: aws s3api get-bucket-location --bucket alex-vectors-<account_id>)."
  type        = string
  default     = null
}

variable "sagemaker_endpoint_name" {
  description = "Name of the SageMaker endpoint from Part 2"
  type        = string
}