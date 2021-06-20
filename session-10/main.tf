module "s3_module" {
  source = "github.com/NurkyzUs/terraform_may/modules/s3" ### remote module 
  env    = "dev"
}


// https://github.com/NurkyzUs/terraform_may/tree/main/modules/s3

// https            = protocol
// github.com       = source code management
// nurkyzus         = organization
// terraform_may    = repository
// tree             = branches
// main             = branch 
// modules          = sub-directory
// s3               = sub-directory