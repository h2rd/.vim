My vim config installation
====

1. Set up:

    ```bash
    git clone https://github.com/h2rd/.vim ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    git clone https://github.com/gmarik/vundle ~/.vim/bundle/
    ```

2. Install bundles:

    Launch `vim`, run `:BundleInstall` 
    (or `vim +BundleInstall +qall` for CLI lovers)
