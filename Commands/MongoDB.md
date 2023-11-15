## MongoDB Not Starting

```sh
sudo chown -R mongodb:mongodb /var/lib/mongodb
```

```sh
sudo chown mongodb:mongodb /tmp/mongodb-27017.sock
```

```sh
sudo service mongod restart
```
