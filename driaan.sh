#!/bin/bash
# Adding user Driaan
sudo useradd -m driaan
sudo mkdir ~driaan/.ssh
cat << EOFF | sudo tee ~driaan/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDCAIfKHfb8MMZAoarOuk6qouTRn2lt9GJSHd0wgQAwyoZYVNSZfXdqi0kV97nL83wwFj4X461schaR4V4s1XUdPIoUVQYuSKTv7M4mCCObJyETmagEGAf5EF0+lSKHyozm2EJF/UgwYj6Cqx7oLAryKetvRDhlKgYICl0WeAkClIG4UDRv7qEoLOjfV0XH9EjKRUqSpPtb2c6dlDac8EqMhxoGD640cJNdFvePYXxWvsvWMY4e5IiijJQ88tXDL0Xn93PaaBoDQBGy6tkG5HmPnO0F6LI9H5lF4usfV9RzSTtI7o3O4dPuGEc5kQ+F0YG4YlxehyWEiuZvT9mSfTiT4i6wL8IhJr4AAYrrFdf4F66utQcnmDU9OBM+OzAVhGmaKLcX3ZMPpXZPNDqYCO2vfSSVzKv6aW0c0QscTlsZBikTTV5uStxVSlxRVOHO8iigHxXLMYKdoFH/aQdFaBbk1uyqW+RFKOgsFGMYZrGQSbmA4WfcuRBnzG5+U+Qoj78= driaan@driaan-laptop
EOFF
sudo chmod 0644 ~driaan/.ssh/authorized_keys
sudo chown -R driaan:driaan ~driaan
echo "driaan ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/011_driaan_nopass
# END Adding user Driaan