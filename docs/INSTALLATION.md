# Installation

## Preamble

Although Regina Rexx has been widely ported, the  installation instructions will focus on 64 bit, desktop platforms running Windows, Linux, or MacOS.

## Installation Steps

Please note that this track expects the latest version of [Regina](https://sourceforge.net/projects/regina-rexx/files/regina-rexx/3.9.5/) to be installed (3.9.5, as at the time of writing). The provided hyperlink takes you straight to the Files section from which you choose a file to download.

### Windows

An installation to run natively under Windows (via a CMD or Powershell window) is easily performed in the browser via the [`Download Latest Version`](https://sourceforge.net/projects/regina-rexx/files/regina-rexx/3.9.5/Regina395w64.exe/download) button. It is a matter of doing no more than click, download, and install.

If you have, or wish to use, Linux emulation environments such as:

* [Git for Windows](https://gitforwindows.org/)
* [Cygwin](https://cygwin.com/)
* [MinGW](http://mingw.org/)

the Windows-native Regina binaries should be accessible, so you can simply execute them in these environments, and for most purposes, this is fine.

One caveat, however, is that the ADDRESS instruction does not work correctly (because it interfaces to the host operating system). For best results in these environments, source the environment-specific package, and install it. The Regina website, for instance, hosts a [Cygwin-specific](https://sourceforge.net/projects/regina-rexx/files/regina-rexx/3.9.5/regina-rexx-3.9.5-x86_64-pc-cygwin.tgz/download) build which could be installed.

Alternatively, if you have or wish to use a _real_ Linux distribution under Windows such as [WSL](https://docs.microsoft.com/en-us/windows/wsl/about), or [Virtual Box](https://www.virtualbox.org/), simply follow the instructions under the Linux section for the relevant distribution.

### Linux

Linux installations are, typically, quite straightforward when using the system's package manager. It is problematic, however, when the available packages are _not_ the latest available. This is, regrettably, the case with Regina.

A package-based installation is still possible by manually sourcing the latest package. The [Regina](https://sourceforge.net/projects/regina-rexx/files/regina-rexx/3.9.5/) website hosts packages for Debian family (includes Ubuntu), and RHEL family (includes Fedora, CentOS, Rocky and Alma) distributions, among others.

For the chosen distribution, you will need to download two packages, a library package, and a binaries package. For example, to install on Debian or Ubuntu, do as follows:

```plain
sudo apt update && sudo apt -y install curl
curl -sLk https://sourceforge.net/projects/regina-rexx/files/regina-rexx/3.9.5/regina-rexx_3.9.5-2_amd64-Debian-11.deb > regina-rexx_3.9.5-2_amd64-Debian-11.deb
curl -sLk https://sourceforge.net/projects/regina-rexx/files/regina-rexx/3.9.5/libregina3_3.9.5-2_amd64-Debian-11.deb > libregina3_3.9.5-2_amd64-Debian-11.deb
sudo apt -y install libregina3_3.9.5-2_amd64-Debian-11.deb regina-rexx_3.9.5-2_amd64-Debian-11.deb
```

And on CentOS, and RHEL 7, try:
```plain
sudo yum update && sudo yum install curl
curl -sLk https://sourceforge.net/projects/regina-rexx/files/regina-rexx/3.9.5/regina-rexx-3.9.5-220823.1647.x86_64-CentOS-7.9.2009.rpm > regina-rexx-3.9.5-220823.1647.x86_64-CentOS-7.9.2009.rpm
curl -sLk https://sourceforge.net/projects/regina-rexx/files/regina-rexx/3.9.5/libregina3-3.9.5-220823.1647.x86_64-CentOS-7.9.2009.rpm > libregina3-3.9.5-220823.1647.x86_64-CentOS-7.9.2009.rpm
sudo yum localinstall libregina3-3.9.5-220823.1647.x86_64-CentOS-7.9.2009.rpm regina-rexx-3.9.5-220823.1647.x86_64-CentOS-7.9.2009.rpm
```

And on Fedora, Rocky, and Alma, try:
```plain
sudo dnf update && sudo dnf install curl
curl -sLk https://sourceforge.net/projects/regina-rexx/files/regina-rexx/3.9.5/regina-rexx-3.9.5-220826.0951.x86_64-rocky-9.0.rpm > regina-rexx-3.9.5-220826.0951.x86_64-rocky-9.0.rpm
curl -sLk https://sourceforge.net/projects/regina-rexx/files/regina-rexx/3.9.5/libregina3-3.9.5-220826.0951.x86_64-rocky-9.0.rpm > libregina3-3.9.5-220826.0951.x86_64-rocky-9.0.rpm
sudo dnf localinstall libregina3-3.9.5-220826.0951.x86_64-rocky-9.0.rpm regina-rexx-3.9.5-220826.0951.x86_64-rocky-9.0.rpm
```

Where a package-based installation is not possible, or has otherwise proven problematic, it is always possible to build from source, the archive obtainable via:

```plain
curl -sLk https://sourceforge.net/projects/regina-rexx/files/regina-rexx/3.9.5/regina-rexx-3.9.5.tar.gz > regina-rexx-3.9.5.tar.gz
```

Assuming the standard build tools (gcc, make) are installed (if not, follow instructions here: [Install Development Tools](https://ostechnix.com/install-development-tools-linux/)), then perform the following steps:

```plain
tar -xzvf regina-rexx-3.9.5.tar.gz && cd regina-rexx-3.9.5
./configure
sudo make
sudo make install
```

The library (`libregina.so`), and two sets of binaries, (`rexx` and `regina`) are installed (the default location is `/usr/local/bin`).

The `rexx` binary is statically-linked, so is self-contained, and ready to use.

The `regina` binary is dynamically-linked, hence requires some configuration so it can locate the `libregina.so` shared library at runtime. To do so follow these steps:

```plain
# Configure shared library location
sudo su
echo /usr/local/lib64/ > /etc/ld.so.conf.d/regina-rexx-3.9.5-x86_64.conf
echo /usr/local/lib64/regina-rexx/addons > /etc/ld.so.conf.d/regina-rexx-addons-x86_64.conf
cd /usr/local/lib64
rm -f libregina.so libregina.so.3
ln -s libregina.so.3.9 libregina.so
ln -s libregina.so.3.9 libregina.so.3
ldconfig
exit

# Check symbolic link creation
ls -l /usr/local/lib64/

# Output should be similar. Note symbolic links.
-rw-r--r--. 1 root root 3887554 Dec  1 18:22 libregina.a
lrwxrwxrwx. 1 root root      16 Dec  2 06:03 libregina.so -> libregina.so.3.9
lrwxrwxrwx. 1 root root      16 Dec  2 06:03 libregina.so.3 -> libregina.so.3.9
-rwxr-xr-x. 1 root root  574104 Dec  1 18:22 libregina.so.3.9
drwxr-xr-x. 2 root root      26 Dec  1 18:22 pkgconfig
drwxr-xr-x. 4 root root      33 Dec  1 18:22 regina-rexx

# Check library path, and executable using that path
ldconfig -p | grep regina
ldd /usr/local/bin/regina

# Alternate for local user
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/lib64:/usr/local/lib64/regina-rexx/addons
```

Please note, building from source, and the attendant system configuration, is a task best undertaken by experienced users.

### MacOS

Installation is a three-step process:

* Install the [Homebrew](https://brew.sh) package manager
* Locate, and launch, the `Terminal` application
* From the `Terminal` command-line, enter the following:

   `brew install regina-rexx`

This _should_ install the latest version.

If it does not do so, you can download the [Regina for MacOS](https://sourceforge.net/projects/regina-rexx/files/regina-rexx/3.9.5/regina-rexx-3.9.5-x86_64-apple-darwin21.6.0.tgz/download) package, and manually install it.

## Post-installation

### Installation Check

After completing the installation, you can verify if  [Regina](https://sourceforge.net/projects/regina-rexx/files/regina-rexx/3.9.5/) was installed successfully by running this command in a terminal:

```plain
rexx --version=v
```

On both Windows and Linux platforms, the following terminal output will appear:

```plain
3.9.5
```

which is the interpreter version number.

A second binary, `regina`, is also installed. It is identical to `rexx` in very way except that it links to a shared library, and is the interpreter to instead use if wishing to access external utility functions. See section [Accessing External Routines](###accessing-external-routines).

No other software components need to be installed to commence using the track (assuming the Exercism CLI has been installed).

The usage notes below will provide a basic grounding in using the interpreter from the command line.

### Usage

A Rexx script will typically have a _`.rexx`_ extension, although this is not mandatory as the interpreter will attempt to execute whatever filename is passed as an argument, and if it contains valid Rexx code, will run successfully.

The subsequent command will attempt to execute a file called, `hello.rexx`:

```plain
rexx hello.rexx
```

Assuming the file contained the following code:

```rexx
say "Hello, world!"
exit 0
```

then terminal output would be:

```plain
Hello, world!
```

The same terminal output would appear if the file were renamed to `hello.txt` and executed as:

```plain
rexx hello.txt
```

It is well worth knowing, too, that, script code can be piped in to the interpreter rather than resident in a file. The earlier code may be executed via piping as follows:

```plain
echo "say 'Hello, world' ; exit 0" | rexx
```

and works equally well from either a Linux, or a Windows Powershell, terminal.

### Advanced Usage

Script files may be passed one, or more, command-line arguments, and may return arbitrary, whole number return codes. However, the interpreter needs to know that multiple arguments will be passed to the script, something accomplished via the `-a` option.

For instance, assume the file, `multiarg.rexx`, contains the following code:

```rexx
say "My name is" ARG(1) || ", your name is" ARG(2) || ", and the script return code will be" ARG(3) || "."
exit ABS(ARG(3))
```

To ensure the multiple script arguments are correctly interpreted, the script is executed as follows:

```plain
rexx -a multiarg.rexx "John" "Jill" 5
```

which results in the following terminal output:

```plain
My name is John, your name is Jill, and the script return code will be 5.
```

and the program return code (accessible via `$?` on Linux, or `%errorlevel%` on Windows) set to a value of 5.

### Accessing External Routines

Regina supports the use of routines resident in external, shared libraries. Several are available from the Regina website. Installation of such libraries is not, however, discussed here.

Regina does come bundled with one such library, _regutil_. It contains several general purpose routines including for math, file and filesystem manipulation, and system access tasks.

No additional installation steps are required. However, to use these routines in a script requires that they be registered when the interpreter is loaded. This requires no more than two function calls, and the process is illustrated here.

A file, `access-external.rexx`, contains the following code:

```rexx
/* Register external library and functions */
call RxFuncAdd 'SysLoadFuncs', 'regutil', 'SysLoadFuncs'
call SysLoadFuncs

say "Value of pi is" SysPi()
say "Square root of 25 is" SysSqrt(25)
say "Square root of 2 is" SysSqrt(2)

/* Deregister */
call SysDropFuncs

exit 0
```

To load and use these routines, the `regina` binary must be used, so the script would be executed thus:

```plain
regina access-external.rexx
```

and the following terminal output appears:

```plain
Value of pi is 3.141592654
Square root of 25 is 5.000000000
Square root of 2 is 1.414213562
```

If, instead, the `rexx` binary had been used, the terminal output on a Windows platform would be:

```plain
'SYSLOADFUNCS' is not recognized as an internal or external command,
operable program or batch file.
'SYSPI' is not recognized as an internal or external command,
operable program or batch file.
'SYSSQRT' is not recognized as an internal or external command,
operable program or batch file.
'SYSSQRT' is not recognized as an internal or external command,
operable program or batch file.
'SYSDROPFUNCS' is not recognized as an internal or external command,
operable program or batch file.
```

while on a Linux platform the terminal output would be:

```plain
sh: SYSLOADFUNCS: command not found
sh: SYSPI: command not found
sh: SYSSQRT: command not found
sh: SYSSQRT: command not found
sh: SYSDROPFUNCS: command not found
```

