My vim config installation
====

1. Set up:

    ```bash
    git clone https://github.com/h2rd/.vim ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    mkdir -p ~/.vim/bundle/
    git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle/
    ```

2. Install bundles:

    Launch `vim`, run `:BundleInstall`
    (or `vim +BundleInstall +qall` for CLI lovers)
