variable "region" {
  #default = "eu-central-1" # Frankfurt
  #default = "us-east-2" # Ohio
  #default = "us-west-2" #Oregon
  #default = "ap-southeast-2"
  #default = "us-east-2"
  #default = "eu-west-1"
  default = "us-east-1" # Virginia
  description = "the region where you want deploy the terraform code"
}


variable "profile" {
  default = "default"
}

variable "prefix" {
    default = "tfapp1"
    description = "The prefix used to build the elements"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "public_key" {
  description = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDtootlp/iB5H1taLhXpgLw4S5q15nqMX14BBuAuB1E2liphJStdoVSBxtXyNtU2bAFgvVbHnZ03P7lISNEeoer2xtjOCMOSfHI7bzVrQ+eZkaCuer8WouyWS1IudLMJd/UKpyHRVPP9s4FrL/FbBa9FqxjF/i9srGiNrDBgm2xXqvq/azDfeCfBfZs2i9m5aTAIBeuvjT4VVOmR9D58qX8d0qQUmHp6SF1gZzKEkC6GBYH6WkvhnUVgS/Rb9kjNZk5yut906mxXFx/mVFS+4UEiqNyfO8U+1otHuq/CI95KAvnA+JZk0OHybvTe2uHHnYoXC3pYaBalqertL+PPtndrOppyGXT2Yde9aDw7gMM/+b6uSqmLz6ZjquwjBWi+HdQrAbF/vd8JX8tMWpmZqAodxQvgtKYukfEwhRgk06SBTqFU03OO2FvztAAI/U5PpPgWO3sYVfM3d4XJ6ZEOzBWfTeofMvYGq/Zo6Cj4puZgFr8SDJw9My8lbK3ypSezK0vfKQLtchYCfBHmOpL9f2CMymzIzGaTv9pbNsYRC7JekfE4FzV942N45Ca6lGACT8UsSE8Cc6atE+ALHZxK5wxdMh0mhgswwSt9k7aBW1qFVJr5AxX3Fv0CqD/Q3P/EaCbt4nFZWpM7pjgHogPq/TTXcLuujOdZ+jn/U0Ur9UNAQ== bmwitcher@gmail.com"
  type        = string
  default     = ""
}