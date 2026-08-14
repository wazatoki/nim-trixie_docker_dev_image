# nim-trixie_docker_dev_image
A development environment based on nim-trixie. SSH and vim are pre-installed.

# image build
execute tools\windows\build_image.bat

# docker run
execute tools\windows\start_up_container.bat

# stop & remove container
execute tools\windows\stop_container.bat

# attach on running container
execute tools\windows\attach_on_running_container.bat
or
docker exec --user dev -it my_ssh_container /bin/bash

# Connect to a running container via SSH
ssh dev@localhost -p 2222

# To select the current stable release of Nim
choosenim stable

# To update to the latest stable release of Nim
choosenim update stable

# To display which versions are currently installed
choosenim show

# To select a specific version
choosenim 2.0.0
