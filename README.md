# Blazegraph Vagrant
This repository creates a Vagrant VM that bundles the [Blazegraph](https://www.blazegraph.com/) triplestore and related dependencies.

## Requirements

* [Vagrant](https://www.vagrantup.com/)
* [VirtualBox](https://www.virtualbox.org/)

## Usage

1. `git clone https://github.com/ucsdlib/blazegraph-vagrant.git`
2. `cd blazegraph-vagrant`
3. `vagrant up`

You can shell into the machine with `vagrant ssh` or `ssh -p 2222 vagrant@localhost`

## Environment

* Ubuntu 14.04 64-bit machine with:
  * [Blazegraph 1.5.3](http://sourceforge.net/projects/bigdata/files/bigdata/1.5.3/) at [http://localhost:9999/bigdata/](http://localhost:9999/bigdata/)
  * (more soon)

## Windows Troubleshooting

If you receive errors involving `\r` (end of line):

Edit the global `.gitconfig` file by running the command:
```
git config --global core.autocrlf false
```
Remove and clone again. This will prevent windows git clients from automatically replacing unix line endings LF with windows line endings CRLF. 

## Thanks

* This VM setup was heavily influenced (read: stolen) from [Fedora 4 Vagrant](https://github.com/fcrepo4-exts/fcrepo4-vagrant).
* The initial content and inspiration for this repository is taken from the [SPARQL Workshop](https://github.com/LODLAM/DLF15LODLAM/tree/master/SPARQL) given by [Tom Johnson](https://github.com/no-reply) at the DLF LODLAM meeting in 2015.
