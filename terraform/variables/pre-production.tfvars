region = "eu-west-2"

# https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#task_size
webservers_cpu = 256
webservers_memory = 512
webservers_image = "exercism-webserver:latest"
webservers_port = 80
webservers_count = 1