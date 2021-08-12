# Startup-Config

#### 官网下载go

#### fish配置文件添加环境变量
~/.config/fish/config.fish 
```
....
set -x PATH /opt/homebrew/bin/ /usr/local/bin /usr/bin /bin /usr/sbin /sbin /Library/Apple/usr/bin /opt/homebrew/bin/ /usr/local/go/bin $PATH
```


//fish提示符配置全文
/Users/anjuke/.config/fish/functions

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


//gopath工作区(bin，pkg，src), goroot编译器等
默认/usr/local/go/
go env查看go的环境

//安装redis mysql etcd brew install 安装


//安装 protoc
wget https://github.com/protocolbuffers/protobuf/releases/download/v3.14.0/protoc-3.14.0-linux-x86_64.zip
unzip protoc-3.14.0-linux-x86_64.zip
mv bin/protoc /usr/local/bin/


//mysql初始命令

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

//etcd
  brew services start etcd
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/etcd/bin/etcd
==> Summary
🍺  /opt/homebrew/Cellar/etcd/3.5.0: 9 files, 74.0MB


//redis
To start redis:
  brew services start redis
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/redis/bin/redis-server /opt/homebrew/etc/redis.conf
==> Summary
🍺  /opt/homebrew/Cellar/redis/6.2.5: 14 files, 2MB


//安装goctl
GO111MODULE=on GOPROXY=https://goproxy.cn/,direct go get -u github.com/tal-tech/go-zero/tools/goctl

把 /Users/anjuke/go/bin 添加到fish的环境里
chmod 777 /Users/anjuke/go/bin 修改权限


