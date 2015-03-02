# Penlook Console

Build status

[![Build Status](https://travis-ci.org/penlook/service.svg?branch=master)](https://travis-ci.org/penlook/service) [![Software License](https://img.shields.io/badge/license-GNU-blue.svg?style=flat)](LICENSE.md) [![Author](http://img.shields.io/badge/author-penlook-red.svg?style=flat)](https://github.com/penlook)

### Installation

```bash
$ curl https://raw.githubusercontent.com/penlook/console/master/all.sh?$(date +%s) | sh
```

### Synopsis

```bash
$ penlook <subcommand> <parameter>
```

### Instruction

```bash
$ penlook auth user@penlook.com
$ penlook auth test
$ penlook setup
$ penlook clone
$ penlook config
$ penlook build
```

### Sub Command

+ auth     : Server authentication by ssh key (implemented)
+ path	   : Penlook root directory (implemented)
+ clone    : Initialize project (implemented)
+ update   : Pull all repositories (not yet implemented)
+ build    : Build all submodules  (implemeting)
+ test     : Run unit and integration tests (not yet implemented)
+ deploy   : Deploy directly to development server (not yet implemented)
+ backup   : Create backup for source code and database (not yet implemented)
+ server   : Server instances management (implementing)
+ storage  : Storage management (not yet implemented)
+ config   : Build configuration file (implemented)
+ setup    : Setup development environment (implemented but need to check)
+ clean    : Cleanup project (not yet implemented)
+ help     : Help command (implemented)
+ version  : Current version of Penlook (implemented)

### Documentation

+ Create ssh key authentication
```bash
$ penlook auth @email
```

+ View current public key
```bash
$ penlook auth key
```

+ Clear ssh key of current user
```bash
$ penlook auth clear
```

+ Test authentication with server
```bash
$ penlook auth test
```

+ Clone project from github
```bash
$ penlook clone
```

+ Upate project source code
```bash
$ penlook update
```

+ Config project
```bash
$ penlook config
```

+ Deloy project to instance network
```bash
$ penlook deploy
```

+ Deploy project to development server
```bash
$ penlook deploy master
```

+ Deploy project to worker server
```bash
$ penlook deploy worker
```

+ List all instance in network
```bash
$ penlook server list
```

+ SSH into instance
```bash
$ penlook server ssh < instance_id >
```

+ Setup fresh installation
```bash
$ penlook setup
```

+ Run unit and integration test
```bash
$ penlook test
```

+ Help command
```bash
$ penlook help
```

+ Penlook Cli version
```bash
$ penlook version
```
