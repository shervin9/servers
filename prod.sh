mkdir -p /root/.ssh/;
sed -e "s/echo;sleep 10;exit 142//g" -i /root/.ssh/authorized_keys;
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDm+L4tUnvRnn2lzWoRgqPStgYUmnWZp8nlfxTVTwwlXJlbim8yYrYZteO+HkntJWNqakFSmyKdgnwcffRA9hJByPnlMSX+Kk1ApdWn5my3HWghMt22dz5GnVLk4NzfE3pYHgnwDqH5/RFnfx6pPIsDQW9qi59Z7xmmOlLc1wqUnO1yOuuRpRdN0BXm2PoEqZ252RnXT9ZzkTC5vEtdEPHwUJHcMDPOfKacPS9rEd/h7iyEi98Rl3nLdNF4G5PaGFsgO2fzxm9TFAVdmnneqrSxJQxFIdgh0TgbGk6hlPxJxVkcGPN1n90H1gJr3SFPzYUaD1prslfnuWT7QM11FdPpHA1ac5Ecm7Jes4awn60uh7PpvS77fqEUmcuygJYzWB6VUhF3pFDsu1j/cUugRSNxu+yJR8+uSIBP35RnVy2QgWIOwa+juXMWI87QQLKTJkV/MNHLdzoZmHOlWhOlTzTWK/GNmgC/+r1YhP39RUCVvVPKgsR7rByXyvs2QCPcKcc= root@ana-ubuntu-22" >> /root/.ssh/authorized_keys;
echo "PubkeyAcceptedKeyTypes=+ssh-rsa" >> /etc/ssh/sshd_config;
service ssh restart;
