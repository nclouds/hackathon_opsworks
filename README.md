# hackathon_opsworks
locally testing opsworks

# How


1. Ensure we have packer:

```
$ brew install packer
```

2. Clone this repo

```
$ git clone git@github.com:nclouds/hackathon_opsworks.git
cd hackathon_opsworks
```

3. Build image. This is need for the very first time

```
$ cd opsworks-vm; rake build
```

4. Create vagrant file

```
$ vagrant init ubuntu1404-opsworks
```

5. Download json file

```
./downloadjson.sh user ip opswork.json
```

6.  Specify runlist and path json file in `Vagrantfile`

```
$ vagrant up
```

