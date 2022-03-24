# passgen

![Build](https://github.com/tupini07/passgen/workflows/Build/badge.svg)

This is a small utility I made mainly as an excuse to play around with the [Crystal](https://crystal-lang.org/)
language.

This is a command line tool that will create a password of the specified length and print it to the console. It is
very simple but quite useful if (like me) you find yourself needing to create accounts constantly.

## Installation

For the moment the only way to install it is by cloning the repo, compiling the project, and placing the resulting
executable somewhere in your path.

You can use [just](https://github.com/casey/just) to install the executable to `~/.local/bin`, by running `just install`
from within the project's directory.

Otherwise you can do the following:

```bash
shards build --production
cp bin/passgen ~/.local/bin/
```

## Usage

The executable can either be used interactively or non-interactively. For the interactive mode no
flags should be passed, and for the non-interactive mode options should be passed as flags.

### Interactive mode

In interactive mode, the application will explicitly ask for the information it needs to generate
the password.

```shell
$ passgen
Length for password? [8] 10
Numbers (0..1)? [n/Y] n
Lowercase (a..z)? [n/Y] 
Uppercase (A..Z)? [n/Y] n
Symbols (!@#$%^&*()_+~)? [n/Y] 

        ip^tkipxyz
```

### Non-interactive mode

TODO: write this

## Development

TODO: Write development instructions here

## Contributing

Contributions are very welcome! To keep everything organized please follow the
following process.

1. Fork it (<https://github.com/tupini07/passgen/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Andrea Tupini](https://github.com/tupini07) - creator and maintainer
