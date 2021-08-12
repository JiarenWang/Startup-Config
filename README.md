# Startup-Config

## 常用
#### 切换为bash ```chsh -s /bin/bash```
#### 切换为zsh ```chsh -s /bin/zsh```
#### 修改最高权限 ```chmod 777 /Users/anjuke/go/bin ```
#### .ssh路径 ```~/.ssh/known_hosts```
#### host路径 ``` /etc/hosts```
#### 生成ssh钥匙对 ```ssh-keygen -t ed25519 -C "your_email@example.com" ```
#### 显示所有设置过的环境变量``` env ```
#### 清除屏幕或窗口内容  ```clear```
#### # 设置提交代码时的用户信息 --global表示全局
``` 
$ git config [--global] user.name "[name]"
$ git config [--global] user.email "[email address]"
```
#### bash配置文件:
```
全局
/etc/profile
/etc/profile.d/*.sh
/etc/bashrc
个人用户生效
~/.bash_profile
~/.bashrc
```
#### ~/.profile内容:
``` 
export https_proxy=http://127.0.0.1:1087 http_proxy=http://127.0.0.1:1087 all_proxy=socks5://127.0.0.1:1080
添加环境变量  export PATH=/opt/homebrew/bin/:$PATH
export SCCACHE_CACHE_SIZE="1G"
```

#### fish配置文件添加环境变量
路径: ~/.config/fish/config.fish 
```
set -x PATH /opt/homebrew/bin/ /usr/local/bin /usr/bin /bin /usr/sbin /sbin /Library/Apple/usr/bin /opt/homebrew/bin/ /usr/local/go/bin $PATH
```

#### fish提示符配置全文
路径 ~/.config/fish/functions/fish_prompt.fish

```
function fish_prompt --description 'Write out the prompt'
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status # Export for __fish_print_pipestatus.
    set -l normal (set_color normal)
    set -q fish_color_status
    or set -g fish_color_status --background=red white

    # Color the prompt differently when we're root
    set -l color_cwd $fish_color_cwd
    set -l suffix ':'
    if functions -q fish_is_root_user; and fish_is_root_user
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        end
        set suffix '#'
    end

    # Write pipestatus
    # If the status was carried over (e.g. after `set`), don't bold it.
    set -l bold_flag --bold
    set -q __fish_prompt_status_generation; or set -g __fish_prompt_status_generation $status_generation
    if test $__fish_prompt_status_generation = $status_generation
        set bold_flag
    end
    set __fish_prompt_status_generation $status_generation
    set -l status_color (set_color $fish_color_status)
    set -l statusb_color (set_color $bold_flag $fish_color_status)
    set -l prompt_status (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)

    echo -n -s (date +%T)' ' (set_color $color_cwd) (prompt_pwd) $normal (fish_vcs_prompt) $normal " "$prompt_status $suffix
end
```

## go-zero开发流程
#### 官网安装go
https://golang.org/doc/install
#### GoPath工作区(包含bin，pkg，src), goRoot(包含编译器等)
默认```/usr/local/go/```
查看go的环境```go env```
安装go依赖```go mod tidy```

#### 安装redis mysql etcd 
通过```brew install redis mysql etcd ```安装

#### 安装 protoc
```wget https://github.com/protocolbuffers/protobuf/releases/download/v3.14.0/protoc-3.14.0-linux-x86_64.zip```
```unzip protoc-3.14.0-linux-x86_64.zip```
```mv bin/protoc /usr/local/bin/```


####  mysql

We've installed your MySQL database without a root password. To secure it run:
    mysql_secure_installation

MySQL is configured to only allow connections from localhost by default

To connect run:
    mysql -uroot

To have launchd start mysql now and restart at login:
  brew services start mysql
Or, if you don't want/need a background service you can just run:
  mysql.server start
==> Summary
🍺  /opt/homebrew/Cellar/mysql/8.0.26: 303 files, 296.7MB
==> Caveats
==> mysql
We've installed your MySQL database without a root password. To secure it run:
    mysql_secure_installation

MySQL is configured to only allow connections from localhost by default

To connect run:
    mysql -uroot -p

To have launchd start mysql now and restart at login:
  brew services start mysql
Or, if you don't want/need a background service you can just run:
  mysql.server start


#### etcd
  brew services start etcd
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/etcd/bin/etcd
==> Summary
🍺  /opt/homebrew/Cellar/etcd/3.5.0: 9 files, 74.0MB


#### redis
To start redis:
  brew services start redis
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/redis/bin/redis-server /opt/homebrew/etc/redis.conf
==> Summary
🍺  /opt/homebrew/Cellar/redis/6.2.5: 14 files, 2MB


#### 安装goctl
```GO111MODULE=on GOPROXY=https://goproxy.cn/,direct go get -u github.com/tal-tech/go-zero/tools/goctl```

把 ```~/go/bin``` 添加到fish的环境里 ```export PATH=~/go/bin/:$PATH```
修改权限 ```chmod 777 ~/go/bin``` 


