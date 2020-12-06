let mapleader =","


if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
echo "Downloading junegunn/vim-plug to manage plugins..."
silent !mkdir -p ~/.config/nvim/autoload/
silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
autocmd VimEnter * PlugInstall
endif


set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
call plug#begin('~/.config/nvim/plugged')
Plug 'sainnhe/gruvbox-material'
Plug 'fratajczak/one-monokai-vim'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'crusoexia/vim-monokai'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'sheerun/vim-polyglot'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/edge'
Plug 'sainnhe/forest-night'
" '' Erlang Runtime
" Plug 'machakann/vim-highlightedyank'
Plug 'chriskempson/base16-vim'
Plug 'vim-crystal/vim-crystal'
Plug 'chriskempson/base16-vim'
Plug 'cocopon/iceberg.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arcticicestudio/nord-vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'lifepillar/vim-solarized8'
" Plug 'vim-erlang/vim-erlang-runtime'
  " Working with tags
Plug 'keith/swift.vim'
" Plug 'scrooloose/syntastic'
" Plug 'arzg/vim-colors-xcode'
" Plug 'arzg/vim-swift'
Plug 'tpope/vim-surround'
" Plug 'JuliaEditorSupport/julia-vim'
Plug 'dpelle/vim-LanguageTool'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'mgee/lightline-bufferline'
Plug 'jacoborus/tender.vim'
" Plug 'tmhedberg/SimpylFold'
" Nerd Icons
" Plug 'ryanoasis/vim-devicons'
" Auto Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Markdwon
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'junegunn/goyo.vim'
" Plug 'junegunn/limelight.vim'
"File Type Bases Syntax
Plug 'morhetz/gruvbox'
Plug 'srcery-colors/srcery-vim'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-python/python-syntax'                    " Python highlighting
Plug 'jeetsukumaran/vim-pythonsense'
Plug 'kovetskiy/sxhkd-vim'
Plug 'jreybert/vimagit'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'branch': 'release/1.x' }
" Writing & Note Taking
Plug 'lukesmithxyz/vimling'
Plug 'vimwiki/vimwiki'
""Comments
Plug 'tpope/vim-commentary'
"" Navbar
Plug 'itchyny/lightline.vim'
"CSS
" Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'ap/vim-css-color'
"Go
" Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
" Pairs

" Plugin 'auto-pairs-gentle'
Plug 'alvan/vim-closetag'
Plug 'dkarter/bullets.vim'
" Plug 'rstacruz/vim-hyperstyle'
" Auto change html tags
"Vim Motion
"Plug'easymotion/vim-easymotion'
"HTMLShortcuts
Plug 'mattn/emmet-vim'
" Plug 'voldikss/vim-floaterm'
" Table for MD
" Plug 'dhruvasagar/vim-table-mode'
" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
" Better tabline
" Plug 'mg979/vim-xtabline'
" undo time travel
Plug 'mbbill/undotree'
" Smooth scroll
" Plug 'psliwka/vim-smoothie'
call plug#end()
call vundle#end()

	filetype plugin indent on

	if !has('gui_running')
	  set t_Co=256
	endif

" Pmenu Settings
	highlight Pmenu ctermbg=241 ctermfg=white cterm=bold

" highlight Color
	hi Search cterm=NONE ctermfg=0 ctermbg=222

    let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" Bullets Defining
	let g:bullets_enabled_file_types = [
	    \ 'markdown',
	    \ 'text',
	    \ 'gitcommit',
	    \ 'scratch',
	    \ 'rmd',
	    \ 'rmarkdown'
	    \]

	set bg=light
	 " let g:lightline = {
	 "       \ 'colorscheme': 'deus',
	 "       \}




	" set showtabline=2  " Show tabline
	set guioptions-=e  " Don't use GUI tabline


	set pumheight=15                        " makes popup menu smaller
	" let g:deus_termcolors=256
	" colorscheme deus
	" colorscheme seoul256

" MarkdownPreview
	nmap <C-s> <Plug>MarkdownPreview
	" nmap <M-s> <Plug>MarkdownPreviewStop
	" nmap <C-p> <Plug>MarkdownPreviewToggle


" map New line
" nnoremap <C-enter> o <esc>
" nnoremap <C-S-enter> O <esc>


" Fix indenting visual block
	vmap < <gv
	vmap > >gv


" -----Code Generation-----
" Guide navigation
	noremap <leader><Tab> <Esc>/<++><Enter>"_c4l
	inoremap <leader><Tab> <Esc>/<++><Enter>"_c4l
	vnoremap <leader><Tab> <Esc>/<++><Enter>"_c4l

" general insert commands
	inoremap ,; <++>

" Save file as sudo when no sudo permissions
	" cmap w!! w !sudo tee > /dev/null %

" For remapping the tab key to do autocompletion
	" inoremap <silent><expr> <TAB>
	"       \ pumvisible() ? "\<C-n>" :
	"       \ <SID>check_back_space() ? "\<TAB>" :
	"       \ coc#refresh()
	" 	inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"



" center the search on the line it's found in.
	nnoremap n nzzzv
	nnoremap N Nzzzv

" Vertically center document when entering insert mode
	" autocmd InsertEnter * norm zz

" highlight LineNr ctermfg=grey ctermbg=None cterm=red

	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	hi NonText guifg=bg

" Case Insensitive Search "
	set ic

" Highlight Searches"
	set nohlsearch
	nnoremap <c-c> :set hlsearch! hlsearch?<CR>

" Clear Buffer

" Some basics:
	nnoremap c "_c
	set noruler
	" set modeline
	set nocompatible
	set wrap
	set mouse=a
	set clipboard+=unnamedplus
	set go=a
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber

" Enable autocompletion
	set wildmode=longest,list,full
	let g:rehash256 = 1
	set t_Co=256
" Hide Statusline INSERT
	" set noshowmode
" disables statusline
	set laststatus=0
	 " source ~/.config/nvim/statusline.vim    " patch to statusline config
" Enable's statusline
	" set laststatus=2
" to get rid of display of last command
	set noshowcmd
" to get rid of the file name displayed in the command line bar
	" set shortmess+=F
" Shows Tabline on top
	" set showtabline=1
" Making esc to quit autocomplete
	" inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"

" Disabling Enter key  newline in autocompletion
	inoremap <expr> <cr> ((pumvisible())?("\<C-y>"):("\<cr>"))

" Xreseources Commentry
	" autocmd FileType  xdefaults setlocal commentstring=!\ %s

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
	red

"Set status line
	let g:limelight_conceal_ctermfg ='gray'
	let g:limelight_conceal_ctermfg = 240

" Goyo plugin makes text more readable when writing prose:
	map <silent><leader>g :Goyo \| hi Normal guibg=NONE ctermbg=NONE <CR>
" Change to light and solorozied
" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>
	setlocal nospell

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright


	map <silent><leader>n :CocCommand explorer<cr>
	" map <silent><leader>f :CocCommand explorer --preset floating<cr>

" vimling:
	nm <leader>d :call ToggleDeadKeys()<CR>
	imap <leader>d <esc>:call ToggleDeadKeys()<CR>a
	nm <leader>i :call ToggleIPA()<CR>
	imap <leader>i <esc>:call ToggleIPA()<CR>a
	nm <leader>q :call ToggleProse()<CR>

	" nmap <Leader>l <Plug>(Limelight)
	" xmap <Leader>l <Plug>(Limelight)
	autocmd! User GoyoEnter
	autocmd! User GoyoLeave
	nmap <leader>L :Limelight!!<CR>

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	nnoremap <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l
	nnoremap <C-q> <C-w>q
	" nnoremap <silent><C-q> :wq!<CR>


" Enable folding for Python
	set foldmethod=indent
	set foldlevel=99
	set fdm=syntax


" Insert mode in Normal mode
	" nnoremap <c-k> O<esc>
	" nnoremap <c-j> o<esc>

" Check file in shellcheck:
	map <leader>s :!clear && shellcheck %<CR>

" Open my bibliography file in split
	" map <leader>b :vsp<space>$BIB<CR>
	" map <leader>r :vsp<space>$REFER<CR>

" Replace all is aliased to S.
	nnoremap S :%s//g<Left><Left>

" Compile document, be it groff/LaTeX/markdown/etc.
	map <leader>c :w! \| !compiler <c-r>%<CR>
	map <silent> <c-b> :w! \| !compiler <c-r>%<CR>
	" map <leader>b :w! \| !open.sh  <c-r>%<CR>

	" Refresh webpage
	map <leader>r :! sync_browser <cr>

" Open corresponding .pdf/.html or preview
	nnoremap <leader>p :!opout <c-r>%<CR><CR>
" Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %

" Ensure files are read as what I want:
	" let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	map <leader>v :VimwikiIndex
	let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
	autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
	autocmd BufRead,BufNewFile *.tex set filetype=tex

" Save file as sudo on files that require root permission
	" cnoremap w!! execute "silent! write !sudo -S tee % >/dev/null" <bar> edit!
	" Dwm Statusbar

" Enable Goyo by default for mutt writting
	autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=80
	autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo
	autocmd BufRead,BufNewFile /tmp/neomutt* map ZZ :Goyo\|x!<CR>
	autocmd BufRead,BufNewFile /tmp/neomutt* map ZQ :Goyo\|q!<CR>

" When shortcut files are updated, renew bash and ranger configs with new material:
	" autocmd BufWritePost files,directories !shortcuts
" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
" Update binds when sxhkdrc is updated.
	autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

" setlocal spell! spelllang=en_us
" Toggle Autocommpiler
	map <leader>a :!setsid autocomp % &<CR>

	map Y y$

" set cursorline
	" highlight CursorLine   cterm=bold ctermbg=236  ctermfg=NONE


	nnoremap <silent><S-k> gt
	nnoremap <silent><S-j> gT


" Turns off highlighting on the bits of code that are changed, so the line that is changed is highlighted but the actual text that has changed stands out on the line and is readable.
	if &diff
	    highlight! link DiffText MatchParen
	endif

	"Bad spell color
	hi SpellBad    ctermfg=white     ctermbg=009     cterm=none

" Latex autocompile When Saving....
	" autocmd BufWritePost *.tex silent! execute "!pdflatex % >/dev/null 2>&1"
" Python Syntax
	let g:python_highlight_all = 1
	let g:python_highlight_indent_errors = 0
	let g:indentLine_color_gui = '#A4E57E'

" " Vim Hexokinase
" 	  let g:Hexokinase_refreshEvents = ['InsertLeave']
" 	  let g:Hexokinase_highlighters = ['backgroundfull']
" 	  let g:Hexokinase_optInPatterns = [
" 	  \     'full_hex',
" 	  \     'triple_hex',
" 	  \     'rgb',
" 	  \     'rgba',
" 	  \     'hsl',
" 	  \     'hsla',
" 	  \     'colour_names'
" 	  \ ]
" " Reenable hexokinase on enter
" 	autocmd VimEnter * HexokinaseTurnOn


" Select all
	map <c-a> ggvG$
	imap <c-a> <ecs>ggvG$

" Insert in a () anywhere on the line (My own Creation)
	map <leader>; /(<CR>ci)

"Markdwon Preview Settings
	let g:mkdp_refresh_slow = 1
	" To use preview of md for all
	" let g:mkdp_command_for_global = 1
	let g:mkdp_browser = 'brave'
	set updatetime=100

" Replace ex mode with gq
	map Q gq
"Pretier
	command! -nargs=0 Prettier :CocCommand prettier.formatFile
	vmap <leader>f  <Plug>(coc-format-selected)
	nmap <leader>f  <Plug>(coc-format-selected)
	" vmap <silent><leader>f  <Plug>(coc-format-selected)<cr>
	" nmap <silent><leader>f  <Plug>(coc-format-Document)<cr>
	" nnoremap <leader>f: CocCommand prettier.formatFile <CR><cr>
	nmap <silent><leader>f :!black  % <cr>

" To save without formatting, use
" 	:noa w

" Automatically deletes all trailing whitespace and newlines at end of file on save.

	" autocmd BufWritePre * %s/\s\+$//e
	" autocmd BufWritepre * %s/\n\+\%$//e

" real tab
inoremap <C-TAB> <TAB>


set shortmess+=c

" Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>

" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   else
"     call CocAction('doHover')
"   endif
" endfunction


" Gopls AutoCommpletion engine
let g:go_gopls_enabled = 1


" Setting Ctrl+(j/k) for autocompletion
inoremap <C-j> <C-n>
inoremap <C-k> <C-p>

" trigger snippet expand
" imap <C-j> <Plug>(coc-snippets-expand)

" select text for visual placeholder of snippet
" vmap <C-j> <Plug>(coc-snippets-select)

" expand and jump (make expand higher priority)
" imap <C-j> <Plug>(coc-snippets-expand-jump)

" use alt + hjkl to resize windows
nnoremap <silent> <A-j> :resize -2<CR>
nnoremap <silent> <A-k> :resize +2<CR>
nnoremap <silent> <A-h> :vertical resize -2<CR>
nnoremap <silent> <A-l> :vertical resize +2<CR>

" tab management
nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> 9gt
nnoremap <A-0> 10gt

" jump to next placeholder
let g:coc_snippet_next = '<c-j>'

" jump to previous placeholder
let g:coc_snippet_prev = '<c-k>'



nnoremap <silent> <C-f> :Files<CR>
	let g:fzf_preview_window = 'right:60%'
	" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
	" let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4"
	let $FZF_DEFAULT_COMMAND = 'rg --files --ignore-case --hidden -g "!{.git,node_modules,vendor,.mp3,~/./cache}/*"'
	" command! -bang -nargs=? -complete=dir Files
        " call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

nnoremap <C-]> :call AutoPairsJump()<CR>




"Colorscheme Swithcer Function
let s:color = 1       "Gruvbox Activated"
function! ToggleColor()
	if s:color == 1
		set termguicolors
		let g:gruvbox_material_background = 'soft'
    let g:gruvbox_material_enable_italic = 1
    let g:gruvbox_material_disable_italic_comment = 1
		let g:gruvbox_material_transparent_background = 1
		colorscheme gruvbox-material
		hi Normal ctermbg=NONE guibg=NONE
		let s:color = 0
		let g:lightline = {}
		let g:lightline.colorscheme = 'gruvbox-material'
		set laststatus=0
	else
		set bg=dark
		" hi Normal ctermbg=NONE guibg=NONE
		" set notermguicolors
		" colorscheme default
		set termguicolors
		colorscheme edge
		set bg=dark
		let s:color = 1
		let g:lightline = {}
		let g:lightline.colorscheme = 'dracula'
		" let g:lightline.colorscheme = 'tender'

	endif
endfunction

let s:nord = 1       "Gruvbox Activated"
function! ToggleNord()
	if s:nord == 1
		set bg=dark
		colorscheme nord
		" hi Normal ctermbg=NONE guibg=NONE
		let s:nord = 0
		" set laststatus=2
		" let g:lightline = {}
		" let g:lightline.colorscheme = 'nord'


	else
		set bg=dark
		set termguicolors
		colorscheme nord
		hi Normal ctermbg=NONE guibg=NONE
		let s:nord = 1
		" let g:lightline = {}
		" let g:lightline.colorscheme = 'tender'
		set laststatus=0
		


	endif
endfunction

let s:edge_on = 1 " If Edge = Colorscheme
function! Toggle_Edge()
    if s:edge_on == 1
				let g:edge_transparent_background = 0 " Turn Off Alpha for Edge
				colorscheme edge
        let s:edge_on = 0
		elseif s:edge_on == 0 " Check Edge is Transparent
				let g:edge_transparent_background = 1 " Turn ON Alpha for Edge
				colorscheme edge
        let s:edge_on = 1
    endif
endfunction


let s:on = 0
function! Toggle_Gruvbox()
	if s:on == 0
		let g:gruvbox_material_transparent_background = 0
		colorscheme gruvbox-material
		let s:on = 1 " Gruvbox-Material ON
	elseif s:on == 1 
				let g:gruvbox_material_transparent_background = 1 " Turn ON Alpha for Gruvbox-Material
				colorscheme gruvbox-material
				let s:on = 0
	endif
endfunction





let s:bar = 0
function! ToggleBar()
	if s:bar == 0
		set noshowmode 
		set laststatus=2
		let s:bar = 1
	else
		set laststatus=0
		" set noshowmode 
		let s:bar = 0
	endif
endfunction



nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

let g:lightline = {}
let g:lightline.colorscheme = 'dracula'

  " vim fzf
	" nnoremap <A-g> :GFiles<CR>
	" nnoremap <A-z> :Files<CR>

	" let g:lightline = {
	"       \ 'colorscheme': 'tender', 
	"       \ }
	" autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
" " Powerline Lightline
	let g:lightline.separator = {
		\   'left': '', 'right': ''
	  \}
	let g:lightline.subseparator = {
		\   'left': '', 'right': ''
	  \}

	" set bg=light
	set bg=dark
	set termguicolors
	" " let g:deus_termcolors=256
	hi Normal ctermbg=NONE guibg=NONE
	" hi NonText ctermbg=NONE guibg=NONE
	" nnoremap <M-n> :colorscheme gruvbox<CR>
	" nnoremap <silent><A-t> :hi Normal ctermbg=NONE guibg=NONE<CR>

	" nnoremap <silent><C-t> :call ToggleColor()<cr>


source $HOME/.config/nvim/my_snippets.vim
" nnoremap <C-S>t : colorscheme xcodedarkhc <cr>

noremap Q :noautocmd qall!<CR>

au BufRead,BufNewFile *urls set filetype=sh


" map <C-K> :pyf <path-to-this-file>/clang-format.py<cr>
" imap <C-K> <c-o>:pyf <path-to-this-file>/clang-format.py<cr>


" let g:lsc_auto_map = v:true
let dart_html_in_string=v:true
let g:dart_style_guide = 2
" let g:dart_format_on_save = 1
" let g:solarized_termcolors=256
nnoremap <silent><C-n> : call ToggleNord()<cr>

" Blurred Statusline
	let g:lightline.separator = {
		\   'left': '█▓▒░', 'right': '░▒▓'
	  \}
	let g:lightline.subseparator = {
		\   'left': '▓▒░', 'right': '|'
	  \}


nnoremap <silent><c-l> : call ToggleBar() <cr>
nnoremap <silent><C-g> : call Toggle_Gruvbox() <CR>
nnoremap <silent><c-e> : call Toggle_Edge() <CR>


" Python Syntax overrides for Nord 
augroup nord-theme-overrides
	autocmd!
  " Use 'nord7' as foreground color for Vim comment titles.
  autocmd ColorScheme nord highlight pythonAttribute ctermfg=14 guifg=#8FBCBB
augroup END

	nnoremap <silent><c-m> : colorscheme one-monokai <cr><cr>



" The configuration options should be placed before `colorscheme edge`.
        let g:edge_style = 'neon'
        let g:edge_enable_italic = 1
        let g:edge_disable_italic_comment = 1
				let g:edge_transparent_background = 1
				let g:edge_menu_selection_background = 'purple'
				let g:edge_diagnostic_line_highlight = 1
				let g:edge_current_word = 'bold'
				colorscheme edge
		let g:gruvbox_material_background = 'hard'
    let g:gruvbox_material_enable_italic = 1
    let g:gruvbox_material_disable_italic_comment = 1
		" let g:gruvbox_material_transparent_background = 1
