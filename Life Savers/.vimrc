" Basic Settings
syntax on                 " Enable syntax highlighting
set number                " Show line numbers
set relativenumber        " Show relative line numbers
set expandtab             " Use spaces instead of tabs
set tabstop=4             " Set the width of a tab to 4 spaces
set shiftwidth=4          " Number of spaces to use for autoindent
set smartindent           " Enable smart indentation
set autoindent            " Auto-indent new lines
set clipboard=unnamedplus " Use system clipboard for copy-paste
set cursorline            " Highlight the current line

" Color Scheme
colorscheme desert        " Set a simple color scheme

" Basic Key Mappings
nnoremap <C-n> :NERDTreeToggle<CR> " Toggle NERDTree with Ctrl+n
nnoremap <C-p> :Files<CR>          " Fuzzy find files with Ctrl+p
nnoremap <leader>c :Commentary<CR> " Comment code with leader+c

" Ensure NERDTree is available before running the command
if exists(":NERDTree")
    autocmd vimenter * NERDTree
endif

" Simple Status Line
set laststatus=2
set statusline=%F%m%r%h%w\[FORMAT=%{&ff}]\[TYPE=%Y]\[POS=%l,%v][%p%%]\[LEN=%L]
