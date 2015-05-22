# VSCode Configuration
---

### Install

1. Download Visual Studio Code for Linux
2. Extract: `unzip VSCode-linux-x64.zip -d /usr/local/VSCode`
3. (Optional) Create a symbolid link
	`sudo ln -s /usr/local/VSCode/Code /usr/local/bin/vscode`

### Warnings

there is always some messages show up on start, just ignore

```
[7977:0522/140020:ERROR:browser_main_loop.cc(170)] Running without the SUID sandbox! See https://code.google.com/p/chromium/wiki/LinuxSUIDSandboxDevelopment for more information on developing with the sandbox on.
ATTENTION: default value of option force_s3tc_enable overridden by environment.
```

if you do not run `vscode` by `sudo`, there will show message that

```
ATTENTION: default value of option force_s3tc_enable overridden by environment.
```



