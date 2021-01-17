
           " _                  _
" " ___ _ __ (_)_ __  _ __   ___| |_ ___
" / __| '_ \| | '_ \| '_ \ / _ \ __/ __|
" \__ \ | | | | |_) | |_) |  __/ |_\__ \
" |___/_| |_|_| .__/| .__/ \___|\__|___/
           "  |_|   |_|


"MARKDOWN
	autocmd Filetype markdown,rmd map <leader>w yiWi[<esc>Ea](<esc>pa)
	autocmd Filetype markdown,rmd inoremap ,m ---<Enter>title: <++><Enter>output: <++><Enter>---<Esc>2k
	autocmd Filetype markdown,rmd inoremap ,b ****<++><Esc>F*hi
	autocmd Filetype markdown,rmd inoremap ,d <Esc>0i✅<space><space><Esc>l
	autocmd Filetype markdown,rmd nnoremap ,d <Esc>0i✅<space><space><Esc>l
	autocmd Filetype markdown,rmd nnoremap ,u 0xxx
	autocmd Filetype markdown,rmd inoremap ,r ₹
	autocmd Filetype markdown,rmd nnoremap ,r ₹
	autocmd Filetype markdown,rmd inoremap ,s ~~~~<++><Esc>F~hi
	autocmd Filetype markdown,rmd inoremap ,e **<++><Esc>F*i
	autocmd Filetype markdown,rmd inoremap ,h ====<Space><++><Esc>F=hi
	autocmd Filetype markdown,rmd inoremap ,i ![](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ,a [](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ,1 #<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,2 ##<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,3 ###<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,l --------<Enter>
	autocmd Filetype rmd inoremap ,r ```{r}<CR>```<CR><CR><esc>2kO
	autocmd Filetype rmd inoremap ,p ```{python}<CR>```<CR><CR><esc>2kO
	" autocmd Filetype markdown,rmd inoremap ,c ```<cr>```<cr><cr><esc>2kO
	" autocmd Filetype rmd nnoremap <C-b> :!/usr/bin/Rscript -e "require(xaringhan); xaringhan::moon_reader('$file', quiet=TRUE)" <CR>
	" autocmd Filetype markdown,rmd inoremap ,c ``` ```<esc>bhxi


"C
	autocmd Filetype c inoremap ,h <Esc>gg0i#include <stdio.h><CR>
	autocmd Filetype c inoremap ,m <Esc>gg0i#include <stdio.h><Enter>int main(){<Enter><Enter><Enter>}<Esc>2ki


" HTML
	autocmd Filetype html inoremap ,m <!DOCTYPE html><cr><html><cr><head><cr><meta charset="utf-8" /><cr><title><++></title><cr><link rel='stylesheet' type='text/css' href='style.css'><cr></head><cr><cr><body><cr><++><cr></body><cr></html><esc>2k
	autocmd Filetype html inoremap ,c <link rel='stylesheet' type='text/css' href='style.css'>


" Python
autocmd Filetype python inoremap , ,<space>

