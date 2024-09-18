resource "null_resource" "stupidresource" {
  provisioner "local-exec" {
    command = "echo 'Congrats on your first run! with policy!'"
   }
}
