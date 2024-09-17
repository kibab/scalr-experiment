terraform {
  backend "remote" {
    hostname = "scalr-eval.scalr.io"
    organization = "env-v0oh4o3tl6cs3uju0"

    workspaces {
      name = "test-kibab"
    }
  }
}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo 'Congrats on your first run! with policy!'"
   }
}
