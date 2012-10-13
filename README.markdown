# Whim

### Description

Whim is a tiny set of shell scripts to make playing around with ec2 a whole lot easier. This is *not* intended to manage production clusters.

### Installation

```
% git clone https://github.com/capotej/whim.git
% cd whim
% ./bin/whim init
```

This will load `whim` into your shell environment and give you instructions on how to do this permanently if you wish to do so.


### Configuration

```
% whim copy-config
```

Copies an example to ```~/.whimrc```, edit it with your aws keys, and the path and name to your default keypair.

### Usage

```
% whim
   cmd                    run a raw ec2 command
   commands               List all whim commands
   connect                connect to machine
   copy-config            copy an example config
   list-cmds              list all ec2 commands
   list-images            list all images with their names
   list-machines          list all machines with their instance ids
   register               register an ami-id with a name
   shutdown               shutdown a machine
   start                  start a machine with a name and image
   status                 view all running instances

See 'whim help <command>' for information on a specific command.
```

All commands are self documenting and support tab completion where appropriate. Here's an example session with whim:

```
% whim register base ami-27d43a4e   # makes an image called 'base'
% whim start test1 base             # starts a machine named 'test1' with image 'base'
% whim start test2 base
% whim connect test1                # connect to the test1 machine

```




