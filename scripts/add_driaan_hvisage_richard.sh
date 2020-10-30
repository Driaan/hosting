#!/bin/bash

sudo useradd -m hvisage
sudo mkdir ~hvisage/.ssh
cat << EOFF | sudo tee ~hvisage/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDBQVwL6zDpw5a+oBDZY17HV5CzwuVzbK7nVMnw0Ddcqkkv77Y/JyWy1FNG51HUResCAhl4Lymq8APD3tROGHDPeUnutRqnkDYAzjUwkKQgHdVZRv0sp/5kkuMU030KG7pENT1gshjws0b1rB0cDPm+tfpP52p8atUExVyT34VhSeOaecPTx7rtPPiHIZ3cYqI7IQDlYFsYRaw2Zjo0aVdetkqkD4ZSsr8obeu3MZAApoqdjCs+9hXeSuTvs085fyuDj95QHtrDL1vp79dQANwXUtvDfVzBVptchH2cnUcYsJFUQW7h1qQq45ZGQ0xn1IzuqT5DlL6EGlJECeIvcjEaiYqnVACPjCNVP3wDtMcQ4KCZBw2gyVOyG3D0/q5880stW9Jf4ZOHWwXPPSjBQaz2J/rfEB6TrK15DadfeKTN6KCCoz51DTS3ocDaADiPg63kUAhO5C8vyIcPWPjlztqjM5ZRJBx+02b3Bu+/L62qJiizH2lpsutP4s1SPXIjhL5tFYpX1EiluIJEi4ef9r9VUxQT6mJMF52WG+3/tisIgUF/OK8GfcvGgMabX10KHdPUFm0c4q/PhO70RUEdqVKs2N4b+zHDBiRrZ8R/yahBhMxCEZChOJ/1AxID3hhf49MPKZ0hACRhm9/AsKz/exLKqL8JmCTYZjrbBkfokkveWQ== New Support 2019
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEHbaC0U7VHZ/HadGxTATNOE1c6oOjjYaq87uxCORiD/ ed hv support
EOFF
sudo chmod 0644 ~hvisage/.ssh/authorized_keys
sudo chown -R hvisage:hvisage ~hvisage
echo "hvisage ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/011_hvisage_nopass

# Adding user richard
sudo useradd -m richard
sudo mkdir ~richard/.ssh
cat << EOFF | sudo tee ~richard/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAz91PK1/6sjkfKpltIMefQMXdrgs4asivQGhB3rqs7OF3tKLJVXcxBgbeIIbQtmal4ZTi/qha+k0N/sfY1gz44KCi0mB90Smasg32ewDnTeQihAx0D9XBKZs2zyFNY5sowV3tW5Ar/KwBjpY616BykXsQtj9rEI9gLZ9UcMH5Nq6SHxrGSsmu80bocvW3pDMkd/VQb9OY3zhVWn3guCHhULgz5ntAC1S0/JKDzxkV195YTw+cELK/8U0mY9S7jfkuA/oVUj8LWf/9zvat07eiessqfF2HCo62YYv5qE4VWXqnIUZ7ZPw6dybPOrUXqlyXDax2Y+kPJ6h96oq/68INuw==
EOFF
sudo chmod 0644 ~richard/.ssh/authorized_keys
sudo chown -R richard:richard ~richard
echo "richard ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/011_richard_nopass
# END Adding user richard

sudo useradd -m driaan
sudo mkdir ~driaan/.ssh
cat << EOFF | sudo tee ~driaan/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDCAIfKHfb8MMZAoarOuk6qouTRn2lt9GJSHd0wgQAwyoZYVNSZfXdqi0kV97nL83wwFj4X461schaR4V4s1XUdPIoUVQYuSKTv7M4mCCObJyETmagEGAf5EF0+lSKHyozm2EJF/UgwYj6Cqx7oLAryKetvRDhlKgYICl0WeAkClIG4UDRv7qEoLOjfV0XH9EjKRUqSpPtb2c6dlDac8EqMhxoGD640cJNdFvePYXxWvsvWMY4e5IiijJQ88tXDL0Xn93PaaBoDQBGy6tkG5HmPnO0F6LI9H5lF4usfV9RzSTtI7o3O4dPuGEc5kQ+F0YG4YlxehyWEiuZvT9mSfTiT4i6wL8IhJr4AAYrrFdf4F66utQcnmDU9OBM+OzAVhGmaKLcX3ZMPpXZPNDqYCO2vfSSVzKv6aW0c0QscTlsZBikTTV5uStxVSlxRVOHO8iigHxXLMYKdoFH/aQdFaBbk1uyqW+RFKOgsFGMYZrGQSbmA4WfcuRBnzG5+U+Qoj78= driaan@driaan-laptop
EOFF
sudo chmod 0644 ~driaan/.ssh/authorized_keys
sudo chown -R driaan:driaan ~driaan
echo "driaan ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/011_driaan_nopass
