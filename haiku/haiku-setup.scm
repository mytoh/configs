#! /boot/common/bin/csi -script

(use shell)

(define home (get-environment-variable "HOME"))


(run (ln -sf ~/local/git/dotfiles/.profile ~/.profile))
(print "linked .profile")
(run (ln -sf ~/local/git/dotfiles/.inputrc ~/.inputrc))
(print "linked .inputrc")
(run (ln -sf ~/local/git/dotfiles/.zshrc ~/.zshrc))
(print "linked .zshrc")

(run (ln -sf ~/local/git/dotfiles/.vim-bundles ~/.vim-bundles))
(print "linked .vim-bundles")
(run (ln -sf ~/local/git/dotfiles/.vim ~/.vim))
(print "linked .vim directory")
(run (mkdir -p ~/.vim/bundle))
(print "created ~/.vim/bundle")
(run (git clone git://github.com/gmarik/vundle ~/.vim/bundle/vundle))
(run (mkdir -p ~/config/settings/vim))
(print "created ~/config/settings/vim directory")
(run (ln -sf ~/local/git/dotfiles/.vimrc ~/config/settings/vim/vimrc))

