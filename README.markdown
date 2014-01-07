I've modified the SnipMate plugin to suit my needs.
-Dan Barrese

### Install with Pathogen

    git clone git://github.com/msanders/snipmate.vim.git ~/.vim/bundle/snipmate.vim

### New Features

  * Trigger snippets with &lt;space&gt; (optional).
  * Trigger snippets with &lt;cr&gt;.
  * Trigger snippets with &lt;c-space&gt;.
  * Capitalize first letter of snippet with shift+trigger.

### Control via .vimrc

    let g:snippets_dir='~/.vim/bundle/snipmate.vim/snippets'
    map ,ll   :SnipsLoad<cr>
    map ,lu   :SnipsUnload<cr>
    map ,lse  :SnipsSpaceEnable<cr>
    map ,lsd  :SnipsSpaceDisable<cr>
    map ,lal  :SnipsAdd('acl')<cr>
    map ,lml  :SnipsAdd('math')<cr>
