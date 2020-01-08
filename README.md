# Krates Vagrant Plugin

This plugin provides support for Vagrant provisioning to Krates. Easiest way to test full Krates Platform setup locally.

## System Requirements

- [Krates](https://krates.io/)
- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

## Installation

```
$ krates plugin install vagrant
```

## Commands

#### Vagrant Master

```
$ krates vagrant master
Usage:
    krates vagrant master [OPTIONS] SUBCOMMAND [ARG] ...

Parameters:
    SUBCOMMAND                    subcommand
    [ARG] ...                     subcommand arguments

Subcommands:
    create                        Create a new Vagrant master
    ssh                           SSH into Vagrant master
    start                         Start Vagrant master
    stop                          Stop Vagrant master
    restart                       Restart Vagrant master
    terminate                     Terminate Vagrant master

Options:
    -h, --help                    print help
```

#### Vagrant Node

```
$ krates vagrant node
Usage:
    krates vagrant node [OPTIONS] SUBCOMMAND [ARG] ...

Parameters:
    SUBCOMMAND                    subcommand
    [ARG] ...                     subcommand arguments

Subcommands:
    create                        Create a new node to Vagrant
    ssh                           Ssh into Vagrant node
    start                         Start Vagrant node
    stop                          Stop Vagrant node
    restart                       Restart Vagrant node
    terminate                     Terminate Vagrant node

Options:
    -h, --help                    print help
```

## Contributing

1. Fork it ( https://staticpagesio@bitbucket.org/staticpagesio/krates-plugin-vagrant.git )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

Krates is licensed under the MIT License. See [LICENSE](LICENSE.txt) for full license text.

Kontena is licensed under the Apache License, Version 2.0. See [LICENSE](LICENSE.txt) for full license text.