" These are the mappings for snipMate.vim. Putting it here ensures that it
" will be mapped after other plugins such as supertab.vim.
if !exists('loaded_snips') || exists('s:did_snips_mappings')
	finish
endif
let s:did_snips_mappings = 1

" TriggerSnippet(trailing_char, capitalize_first_letter)
inoremap <silent><expr> <cr>        (pumvisible() ? '<c-y>' : '') . '<c-r>=TriggerSnippet("\n", 0)<cr>'
inoremap <silent><expr> <s-cr>      (pumvisible() ? '<c-y>' : '') . '<c-r>=TriggerSnippet("\n", 1)<cr>'
inoremap <silent><expr> <c-space>   (pumvisible() ? '<c-y>' : '') . '<c-r>=TriggerSnippet("",   0)<cr>'
inoremap <silent><expr> <c-s-space> (pumvisible() ? '<c-y>' : '') . '<c-r>=TriggerSnippet("",   1)<cr>'

" Using <c-tab> here to allow <tab> to be used for omnicomplete.
inoremap <silent> <c-tab>      <c-r>=ForwardsSnippet("")<cr>
snoremap <silent> <c-tab>      <esc>i<right><c-r>=ForwardsSnippet("")<cr>
inoremap <silent> <c-s-tab>    <c-r>=BackwardsSnippet("")<cr>
snoremap <silent> <c-s-tab>    <esc>i<right><c-r>=BackwardsSnippet("")<cr>
inoremap <silent> <c-r><tab> <c-r>=ShowAvailableSnips()<cr>
inoremap <silent> <c-j>        <c-r>=ForwardsSnippet("")<cr>
snoremap <silent> <c-j>        <esc>i<right><c-r>=ForwardsSnippet("")<cr>
inoremap <silent> <c-k>        <c-r>=BackwardsSnippet("")<cr>
snoremap <silent> <c-k>        <esc>i<right><c-r>=BackwardsSnippet("")<cr>

" Cursor color reset on esc.
inoremap <silent><esc> <esc>:call snipMate#resetCursorColor()<cr>
snoremap <silent><esc> <esc>:call snipMate#resetCursorColor()<cr>

" The default mappings for these are annoying & sometimes break snipMate.
" You can change them back if you want, I've put them here for convenience.
snoremap <bs> b<bs>
snoremap <right> <esc>a
snoremap <left> <esc>bi
snoremap ' b<bs>'
snoremap ` b<bs>`
snoremap % b<bs>%
snoremap U b<bs>U
snoremap ^ b<bs>^
snoremap \ b<bs>\
snoremap <c-x> b<bs><c-x>

" By default load snippets in snippets_dir
if empty(snippets_dir)
	finish
endif

call GetSnippets(snippets_dir, '_') " Get global snippets

au FileType * if &ft != 'help' | call GetSnippets(snippets_dir, &ft) | endif
" vim:noet:sw=4:ts=4:ft=vim
