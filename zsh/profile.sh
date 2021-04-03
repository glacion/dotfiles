export POETRY_VIRTUALENVS_IN_PROJECT="true"
export PYTHONDONTWRITEBYTECODE=1
export PYTHONUNBUFFERED=1

export GOPATH=$HOME/.local/go

export FZF_BASE="/usr/local/opt/fzf"
export EDITOR=nvim
export VISUAL=nvim
export CC=clang
export CXX=clang

export PATH="\
/usr/local/opt/gnu-tar/libexec/gnubin:\
/usr/local/opt/coreutils/libexec/gnubin:\
/usr/local/opt/luajit-openresty/bin:\
/usr/local/opt/tcl-tk/bin:\
/usr/local/opt/python@3.9/libexec/bin:\
/usr/local/opt/ncurses/bin:\
/usr/local/opt/ruby/bin:\
/usr/local/lib/ruby/gems/3.0.0/bin:\
/usr/local/opt/llvm/bin:\
/usr/local/opt/icu4c/bin:\
/usr/local/opt/icu4c/sbin:\
$PATH"

export LDFLAGS="\
-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib \
-L/usr/local/opt/openssl@1.1/lib \
-L/usr/local/opt/readline/lib \
-L/usr/local/opt/luajit-openresty/lib \
-L/usr/local/opt/zlib/lib \
-L/usr/local/opt/tcl-tk/lib \
-L/usr/local/opt/ncurses/lib \
-L/usr/local/opt/ruby/lib \
-L/usr/local/opt/libffi/lib \
-L/usr/local/opt/icu4c/lib"

export CPPFLAGS="\
-I/usr/local/opt/openssl@1.1/include \
-I/usr/local/opt/readline/include \
-I/usr/local/opt/luajit-openresty/include \
-I/usr/local/opt/zlib/include \
-I/usr/local/opt/tcl-tk/include \
-I/usr/local/opt/ncurses/include \
-I/usr/local/opt/ruby/include \
-I/usr/local/opt/libffi/include \
-I/usr/local/opt/llvm/include \
-I/usr/local/opt/icu4c/include"

export CFLAGS=$CPPFLAGS
export CXXFLAGS=$CPPFLAGS

export PKG_CONFIG_PATH="\
/usr/local/opt/openssl@1.1/lib/pkgconfig:\
/usr/local/opt/luajit-openresty/lib/pkgconfig:\
/usr/local/opt/tcl-tk/lib/pkgconfig:\
/usr/local/opt/ncurses/lib/pkgconfig:\
/usr/local/opt/ruby/lib/pkgconfig:\
/usr/local/opt/libffi/lib/pkgconfig:\
/usr/local/opt/icu4c/lib/pkgconfig"

