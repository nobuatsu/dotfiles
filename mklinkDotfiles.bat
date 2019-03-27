pushd %HOMEDRIVE%%HOMEPATH%

mklink .bash_logout dotfiles\.bash_logout
mklink .bash_profile dotfiles\.bash_profile
mklink .bashrc dotfiles\.bashrc

mklink .gitconfig dotfiles\.gitconfig
mklink .gitignore_global dotfiles\.gitignore_global

mklink .vimrc dotfiles\.vimrc

popd
