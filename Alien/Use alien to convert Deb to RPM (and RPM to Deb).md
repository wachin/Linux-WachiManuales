# Use alien to convert Deb to RPM (and RPM to Deb)

Oct 25, 2015

https://blog.packagecloud.io/use-alien-to-convert-deb-to-rpm-and-rpm-to-deb/


[linux-how-to](https://blog.packagecloud.io/category/linux-how-to/)  [![Picture of the author, James](https://fs.buttercms.com/resize=height:64/gs764RxTHWYsALcWIzRM) James Crennan](https://blog.packagecloud.io/author/james-crennan/)


[Alien](https://en.wikipedia.org/wiki/Alien_(software)) is a command line tool that allows you to convert Debian packages to RPM packages, and vice versa. This blog post will illustrate how to convert a Debian package to an RPM and similarly, how to convert an RPM package to a Debian package.


## Installing Alien

### Installation on Debian systems

[`alien`](http://joeyh.name/code/alien/) can usually just be installed using `apt-get` on most Debian based systems. You’ll also want `fakeroot`.

```
$ sudo apt-get install alien fakeroot
```

## Converting an RPM to Debian package with Alien

For the example RPM package, we’ll download our [packagecloud-test-1.1-1.x86\_64.rpm](https://packagecloud.io/computology/packagecloud-test-packages/packages/el/6/packagecloud-test-1.1-1.x86_64.rpm) package, from the [packagecloud-test-packages](https://packagecloud.io/computology/packagecloud-test-packages) repository.

```
$ wget --content-disposition https://packagecloud.io/computology/packagecloud-test-packages/packages/el/6/packagecloud-test-1.1-1.x86_64.rpm/download
```

Now, just run `alien` on it (using `fakeroot`).

```
$ fakeroot alien packagecloud-test-1.1-1.x86_64.rpm
packagecloud-test_1.1-2_amd64.deb generated
```

Note how it correctly changed RPM’s architecture `x86_64` to the Debian nomenclature: `amd64`.

You should now have a `packagecloud-test_1.1-2_amd64.deb` package in that same directory.

Let’s just install it with `dpkg -i`.

```
$ dpkg -i packagecloud-test_1.1-2_amd64.deb
```

Finally, you should be able to run our `packagecloud_hello` program to verify everything worked.

```
$ packagecloud_hello
Hi from the packagecloud crew's test program
```

## Converting a Debian package to RPM with Alien

For the example Debian package, we’ll download our [packagecloud-test\_1.1-2\_amd64.deb](https://packagecloud.io/computology/packagecloud-test-packages/packages/ubuntu/precise/packagecloud-test_1.1-2_amd64.deb) package from the [packagecloud-test-packages](https://packagecloud.io/computology/packagecloud-test-packages) repository.

```
$ wget --content-disposition https://packagecloud.io/computology/packagecloud-test-packages/packages/ubuntu/precise/packagecloud-test_1.1-2_amd64.deb/download
```

Again, we run `alien` on it (in a `fakeroot`), but this time with the `--to-rpm` flag.

```
$ fakeroot talien --to-rpm packagecloud-test_1.1-2_amd64.deb
packagecloud-test-1.1-3.x86_64.rpm generated
```

You should now have a `packagecloud-test-1.1-3.x86_64.rpm` package in that same directory.

Let’s install that RPM on a Redhat based system.

```
$ rpm -ivh packagecloud-test-1.1-3.x86_64.rpm
```

Finally, you should be able to run our test program to verify everything worked.

```
$ packagecloud_hello
Hi from the packagecloud crew's test program
```

## How does Alien work?

Because [Debian](https://packagecloud.io/blog/inspect-extract-contents-debian-packages/) and [RPM](https://packagecloud.io/blog/inspect-extract-contents-rpm-packages/) packages are a special kind of archive, automatically transforming between them is possible. For example, to transform an RPM to a Debian package, you would move the contents of an RPM [cpio](https://en.wikipedia.org/wiki/Cpio) archive, to an [ar](https://en.wikipedia.org/wiki/Ar_(Unix)) archive.

## Common Alien issues

It’s important to note that since Alien is just converting between package archive formats, the package you get may not always install, or work as desired, once installed.

### Dependency Chain

It’s entirely possible that the original package dependency chain differs from the desired target system. For instance, a binary in the original package was linked against `glibc-2.8` but the target system only has `glibc-2.1` installed. It’s unlikely this package will work, and you might have to build a native [RPM](https://packagecloud.io/blog/building-rpm-packages-with-mock/) or [Debian](https://packagecloud.io/blog/building-debian-and-ubuntu-packages-with-pbuilder/) package instead.

### Post/Pre/Uninstall scripts

Debian and RPM packages have shell scripts that can run before and/or after your install (during uninstall, also). By default, Alien will **not** include these in the converted package, as there is a high likelihood scripts written for RPM packages won’t work for a Debian system, and vice versa. It might be worth inspecting your original [Debian](https://packagecloud.io/blog/inspect-extract-contents-debian-packages/) or [RPM](https://packagecloud.io/blog/inspect-extract-contents-rpm-packages/) package to see if the included scripts will work and passing `--scripts` to Alien, if so.

### Service initialization

Converting service packages (like redis, apache, mysql, etc) with Alien is tricky because these packages tend to register themselves with the initialization service provided by the native operating system. For example, newer Ubuntu packages will want to use [systemd](https://en.wikipedia.org/wiki/Systemd) instead of [upstart](https://en.wikipedia.org/wiki/Upstart) or [sysvinit](https://en.wikipedia.org/wiki/Init#SYSV), which is what Redhat systems usually want. The package will install successfully, but the service will not be running, as expected.

## Useful Alien options

If you want to bump the version number, you can use `--bump=number`.

```
$ sudo alien --bump=5 --to-rpm packagecloud-test_1.1-2_amd64.deb
packagecloud-test-1.1-7.x86_64.rpm generated
```

To munge/fix permissions, you can use `--fixperms`.

```
$ sudo alien --fixperms --to-rpm packagecloud-test_1.1-2_amd64.deb
```

Install scripts are not included by default, but you can include them using `--scripts`.

```
$ sudo alien --scripts packagecloud-test-1.1-1.x86_64.rpm
```

You can run `lintian` (must already be installed) on the generated Debian package by using `--test`.

```
$ sudo alien --test packagecloud-test-1.1-1.x86_64.rpm
```

_Note: Running `--test` with `--to-rpm` does not run `rpmlint`, as you may expect._

[](https://packagecloud.io/users/new)

[

### Set up your own package repository.

Try Packagecloud

](https://packagecloud.io/users/new)

[](https://packagecloud.io/users/new)

## Conclusion

While finding or building native [Debian](https://packagecloud.io/blog/building-debian-and-ubuntu-packages-with-pbuilder/) or [RPM](https://packagecloud.io/blog/building-rpm-packages-with-mock/) packages is ideal, it’s still useful to know how to convert between them in a pinch. Be sure to check out the [official alien website](http://joeyh.name/code/alien/) for more information.
