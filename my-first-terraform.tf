resource "local_file" "myfile" {
  filename = "mytest.txt"
  content  = "Hello ${random_pet.mypet.id}"
}

resource "random_pet" "mypet" {
  length    = 3
  prefix    = "Ms"
  separator = "."
}