terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

resource "random_pet" "pet" {
  keepers = {
    value = "A"
  }
}

output "pet_name" {
  value = random_pet.pet.id
}
