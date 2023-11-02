#防止中文乱码
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
#oh-my-zsh的安装路径（zsh的配置路径）
ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="robbyrussell"
# 设置字体模式以及配置命令行的主题
POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="agnoster" #我目前使用的模式
#ZSH_THEME="powerlevel9k/powerlevel9k"

# 启动错误命令自动更正
ENABLE_CORRECTION="true"

# 在命令执行的过程中，使用小红点进行提示
COMPLETION_WAITING_DOTS="true"

# 配置要使用的插件
plugins=(
        git
        extract
 #       zsh-autosuggestions
 #       zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh
#source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# python虚拟环境相关设置
if [ -f /usr/local/bin/virtualenvwrapper.sh ];
then
    export WORKON_HOME=$HOME/.virtualenvs
    export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
    source /usr/local/bin/virtualenvwrapper.sh
fi
