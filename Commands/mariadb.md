## Install

```sh
sudo apt-get install mariadb-server
```

## Login

```sh
sudo mysql -u root
```

## Change Password

```sh
ALTER USER 'root'@'localhost' IDENTIFIED BY 'YOURNEWPASSWORD'
```

## User Permission

```sh
grant all on `user_%`.* to `user`@`localhost`;
```