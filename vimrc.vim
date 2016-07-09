" Gotta be first
set nocompatible

filetype off

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" ----- Making Vim look good ------------------------------------------
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'bling/vim-airline'

" Add plugins to &runtimepath
call plug#end()

filetype plugin indent on

" --- General settings ---
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

syntax on

set mouse=a


 " ----- Plugin-Specific Settings --------------------------------------

 " ----- altercation/vim-colors-solarized settings -----
 " Toggle this to "light" for light colorscheme
 set background=dark

 " Uncomment the next line if your terminal is not configured for solarized
 "let g:solarized_termcolors=256

 " Set the colorscheme
 colorscheme solarized


 " ----- bling/vim-airline settings -----
 " Always show statusbar
 set laststatus=2

 " Fancy arrow symbols, requires a patched font
 " To install a patched font, run over to
 "     https://github.com/abertsch/Menlo-for-Powerline
 " download all the .ttf files, double-click on them and click "Install"
 " Finally, uncomment the next line
 "let g:airline_powerline_fonts = 1

 " Show PASTE if in paste mode
 let g:airline_detect_paste=1

 " Show airline for tabs too
 let g:airline#extensions#tabline#enabled = 1