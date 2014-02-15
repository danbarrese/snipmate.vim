I've modified the SnipMate plugin to suit my needs.
-Dan Barrese

### Install with Pathogen

    git clone git://github.com/msanders/snipmate.vim.git ~/.vim/bundle/snipmate.vim

### New Features

  * Trigger snippets with &lt;space&gt; (optional).
  * Trigger snippets with &lt;cr&gt;.
  * Trigger snippets with &lt;c-space&gt;.
  * Capitalize first letter of snippet with shift+trigger.
  * Snippets trigger when pop-up menu is visible (pumvisible()).
  * Cursor and visual highlight color changes while in snippet.  Colors reset on last tab stop or <esc>.
  * Link snippet with another snippet with $LINK{existingSnippetTrigger}.

### Control via .vimrc

    let g:snippets_dir='~/.vim/bundle/snipmate.vim/snippets'
    let g:snips_cursorBg_inSnip = "red"
    let g:snips_cursorBg_orig = synIDattr(synIDtrans(hlID("Cursor")), "bg")
    let g:snips_visualBg_inSnip = "pink"
    let g:snips_visualBg_orig = synIDattr(synIDtrans(hlID("Visual")), "bg")
    map ,ll   :SnipsLoad<cr>
    map ,lu   :SnipsUnload<cr>
    map ,lse  :SnipsSpaceEnable<cr>
    map ,lsd  :SnipsSpaceDisable<cr>
    map ,lal  :SnipsAdd('acl')<cr>
    map ,lml  :SnipsAdd('math')<cr>
