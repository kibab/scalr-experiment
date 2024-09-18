resource "null_resource" "stupidresiurce" {
  provisioner "local-exec" {
    command = "echo 'Congrats on your first run! with policy!'"
   }
}