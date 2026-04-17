variable "aws_region" {
  description = "AWS region for resources"
  type        = string
}

variable "openai_api_key" {
  description = "OpenAI API key for the researcher agent"
  type        = string
  sensitive   = true
}

variable "researcher_litellm_model" {
  description = "LiteLLM model id for the researcher (OpenAI API), e.g. openai/gpt-4o or openai/gpt-4o-mini"
  type        = string
  default     = "openai/gpt-4o"
}

variable "alex_api_endpoint" {
  description = "Alex API endpoint from Part 3"
  type        = string
}

variable "alex_api_key" {
  description = "Alex API key from Part 3"
  type        = string
  sensitive   = true
}

variable "scheduler_enabled" {
  description = "Enable automated research scheduler"
  type        = bool
  default     = false
}