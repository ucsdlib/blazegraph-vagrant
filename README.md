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
