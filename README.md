# Daffodil VS Code Vagrant Boxes

This repo holds Vagrant and Ansible code to spin up local development VMs for daffodil-vscode.

## Requirements

- [**vagrant**](https://developer.hashicorp.com/vagrant/downloads)
- [**ansible**](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- Supported hypervisor:
  - [**virtualbox**](https://www.virtualbox.org/wiki/Downloads)
  - [**parallels**](https://www.parallels.com/products/desktop/download/)
    - Required if using Apple Silicon.

## Apple Silicon

For vms being made on Apple Silicon you will need to install **Parallels Desktop**. After installing Parallels Desktop you will need to install the Vagrant plugin by running:

```bash
vagrant plugin install vagrant-parallels
```

Supported platforms:

- alma9
- fedora (38/39)
- ubuntu (20.04/22.04)

## Create VM

Each script sends in the arch type of the host to the Vagrantfile so it knows where to use an arm based OS or not.

#### almalinux 9

```bash
./create.sh alma9
```

#### fedora 38

```bash
./create.sh fedora_38
```

#### fedora 39

```bash
./create.sh fedora_39
```

#### ubuntu 20.04

```bash
./create.sh ubuntu_20.04
```

#### ubuntu 22.04

```bash
./create.sh ubuntu_22.04
```

## Destroy VM

#### almalinux 9

```bash
./destroy.sh alma9
```

#### fedora 38

```bash
./destroy.sh fedora_38
```

#### fedora 39

```bash
./destroy.sh fedora_39
```

#### ubuntu 20.04

```bash
./destroy.sh ubuntu_20.04
```

#### ubuntu 22.04

```bash
./destroy.sh ubuntu_22.04
```

## SSH into VM

#### almalinux 9

```bash
./ssh.sh alma
```

#### fedora 38

```bash
./ssh.sh fedora_38
```

#### fedora 39

```bash
./ssh.sh fedora_39
```

#### ubuntu 20.04

```bash
./ssh.sh ubuntu_20.04
```

#### ubuntu 22.04

```bash
./ssh.sh ubuntu_22.04
```

## SSH into VM with X11 forwarding

#### almalinux 9

```bash
./x11-ssh.sh alma
```

#### fedora 38

```bash
./x11-ssh.sh fedora_38
```

#### fedora 39

```bash
./x11-ssh.sh fedora_39
```

#### ubuntu 20.04

```bash
./x11-ssh.sh ubuntu_20.04
```

#### ubuntu 22.04

```bash
./x11-ssh.sh ubuntu_22.04
```
