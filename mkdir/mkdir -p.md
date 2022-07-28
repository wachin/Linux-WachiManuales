To copy `myfile.txt` to `/foo/bar/myfile.txt`, use:

```bash
mkdir -p /foo/bar && cp myfile.txt $_
```

## How does this work?

There's a few components to this, so I'll cover all the syntax step by step.

The _mkdir_ utility, [as specified in the POSIX standard](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/mkdir.html), makes directories. The `-p` argument, per the docs, will cause _mkdir_ to

> Create any missing intermediate pathname components

meaning that when calling `mkdir -p /foo/bar`, _mkdir_ will create `/foo` _and_ `/foo/bar` if `/foo` doesn't already exist. (Without `-p`, it will instead throw an error.

The `&&` list operator, as documented in the [POSIX standard](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_09_03) (or the [Bash manual](https://www.gnu.org/software/bash/manual/bash.html#Lists) if you prefer), has the effect that `cp myfile.txt $_` only gets executed if `mkdir -p /foo/bar` executes successfully. This means the `cp` command won't try to execute if `mkdir` fails for [one of the many reasons it might fail](http://pubs.opengroup.org/onlinepubs/009695399/functions/mkdir.html#tag_03_371_05).

Finally, the `$_` we pass as the second argument to `cp` is a "special parameter" which can be handy for avoiding repeating long arguments (like file paths) without having to store them in a variable. Per [the Bash manual](http://www.gnu.org/software/bash/manual/html_node/Special-Parameters.html), it:

> expands to the last argument to the previous command

In this case, that's the `/foo/bar` we passed to `mkdir`. So the `cp` command expands to `cp myfile.txt /foo/bar`, which copies `myfile.txt` into the newly created `/foo/bar` directory.

Note that `$_` is [_not_ part of the POSIX standard](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_05_02), so theoretically a Unix variant might have a shell that doesn't support this construct. However, I don't know of any modern shells that don't support `$_`; certainly Bash, Dash, and zsh all do.

___

A final note: the command I've given at the start of this answer assumes that your directory names don't have spaces in. If you're dealing with names with spaces, you'll need to quote them so that the different words aren't treated as different arguments to `mkdir` or `cp`. So your command would actually look like:

```bash
mkdir -p "/my directory/name with/spaces" && cp "my filename with spaces.txt" "$_"
```

[Share](https://stackoverflow.com/a/32596855/10648253 "Short permalink to this answer")