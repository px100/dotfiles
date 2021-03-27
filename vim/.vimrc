"*****************************************************************************
"" Plugins list
"*****************************************************************************
call plug#begin(expand('~/.config/nvim/plugged'))
Plug 'b3nj5m1n/kommentary'
" Plug 'tpope/vim-fugitive'
Plug 'sodapopcan/vim-twiggy'
Plug 'yuttie/comfortable-motion.vim'
Plug 'Asheq/close-buffers.vim'
" Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
" Plug 'junegunn/fzf.vim' " needed for previews
" Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release/rpc' }
" Plug 'stsewd/fzf-checkout.vim'
Plug 'airblade/vim-rooter'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'tpope/vim-surround'
" Plug 'christoomey/vim-conflicted'
Plug 'mhinz/vim-startify'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
" Plug 'ryanoasis/vim-devicons'
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'cohama/lexima.vim' !!!!!!!!!!!!!!!!
" Plug 'axelf4/vim-strip-trailing-whitespace'
" Plug 'alvan/vim-closetag'

Plug 'haya14busa/is.vim'
Plug 'osyo-manga/vim-anzu'

Plug 'editorconfig/editorconfig-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mustache/vim-mustache-handlebars'
Plug 'rmagatti/auto-session'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
" Plug 'pangloss/vim-javascript'
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'TimUntersberger/neogit'
Plug 'romgrk/barbar.nvim'
" Plug 'andymass/vim-matchup'
" Plug 'wfxr/minimap.vim'
Plug 'kevinhwang91/nvim-hlslens'
" Plug 'wellle/context.vim'
Plug 'tpope/vim-sleuth'
" Plug 'liuchengxu/vim-which-key'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
" Plug 'ojroques/nvim-lspfuzzy'
Plug 'ray-x/lsp_signature.nvim'
" Plug 'alexaandru/nvim-lspupdate'
Plug 'nvim-lua/completion-nvim'
Plug 'steelsojka/completion-buffers'
Plug 'kristijanhusak/completion-tags'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'glepnir/lspsaga.nvim'
Plug 'f-person/git-blame.nvim'
" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" /telescope
call plug#end()
filetype plugin indent on


"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
" Fix backspace indent
set backspace=indent,eol,start
" Disable backspace for insert mode
" set backspace=indent
" Tabs. May be overridden by autocmd rules
set softtabstop=0
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
" Map leader to ,
let mapleader=' '
" Enable hidden buffers
set hidden
" Searching
set hlsearch
set incsearch
set ignorecase
" set smartcase
set fileformats=unix,dos,mac
set clipboard=unnamed
set noswapfile
" Keep cursor centered vertically on the screen
" let &scrolloff=999-&scrolloff
let &scrolloff=10
syntax on
syntax sync fromstart
set ruler              			            " Show the cursor position all the time
set number
" set relativenumber
set showtabline=2
set background=dark
set list
set listchars=tab:\ \ ┊,extends:…,precedes:…,space:·
let no_buffers_menu=1
let g:onedark_termcolors=16
let g:onedark_terminal_italics=1
colorscheme onedark
" let g:onedark_color_overrides = {
" \ "black": {"gui": "#2F343F", "cterm": "235", "cterm16": "0" },
" \ "purple": { "gui": "#C678DF", "cterm": "170", "cterm16": "5" }
" \}
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
endif
if (has("termguicolors"))
 set termguicolors
endif
" Better display for messages
set cmdheight=2
set pumheight=10                        " Makes popup menu smaller
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=100                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes
set ttyfast
set mouse=a
set modifiable
" Hightlight the current line
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#22262b ctermbg=234
" Fix syntax highlight
syntax sync fromstart
" Persistent undo
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif
" Fix for search and replace
" :Ag foo
" if has('nvim')
"   tnoremap <a-a> <esc>a
"   tnoremap <a-b> <esc>b
"   tnoremap <a-d> <esc>d
"   tnoremap <a-f> <esc>f
" endif
"


"*****************************************************************************
"" Basic mappings
"*****************************************************************************
" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv
" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>
" Split navigation
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv
" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" <TAB>: navigate completion
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent> <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
" Paste in a new line
" nmap p :pu<CR>
" 'p' to paste, 'gv' to re-select what was originally selected. 'y' to copy it again
" xnoremap p :pu pgvy


"*****************************************************************************
" Lua language server
"*****************************************************************************
lua require('lua-ls')


"*****************************************************************************
" Git blame
"*****************************************************************************
let g:gitblame_date_format = '%d/%m/%Y'
" highlight CursorLine
highlight gitblame guibg=NONE guifg=#333842


"*****************************************************************************
" LSP saga
"*****************************************************************************
" definition, references
nnoremap <silent> gr <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
" code actions
nnoremap <silent><leader>. <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>. <cmd>'<,'>lua require('lspsaga.codeaction').range_code_action()<CR>
" show hover doc
nnoremap <silent> gh <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
" scroll down hover doc or scroll in definition preview
nnoremap <silent> <C-n> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
" scroll up hover doc
nnoremap <silent> <C-p> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
" rename
nnoremap <silent><leader>rn <cmd>lua require('lspsaga.rename').rename()<CR>


"*****************************************************************************
" telescope
"*****************************************************************************
nnoremap <leader>p <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>


"*****************************************************************************
" Colorizer
"*****************************************************************************
lua require'colorizer'.setup()


"*****************************************************************************
" lsp signature
"*****************************************************************************
lua require('lsp_signature').on_attach {}


"*****************************************************************************
" lsp FZF
"*****************************************************************************
" lua require('lspfuzzy').setup {}


"*****************************************************************************
" Tree
"*****************************************************************************
nnoremap <leader>e :NvimTreeFindFile<CR>
let g:nvim_tree_side = 'right'
let g:nvim_tree_width = 40
" let g:nvim_tree_auto_close = 1
let g:nvim_tree_auto_ignore_ft = ['startify', 'dashboard']
let g:nvim_tree_follow = 1
lua require('tree')

"*****************************************************************************
" LSP config
"*****************************************************************************
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
" nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <silent> gh <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
" auto-format
" autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
lua require('compe-config')


"*****************************************************************************
" Which key
"*****************************************************************************
" let g:mapleader = "\<Space>"
" let g:maplocalleader = ','
" nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
" nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
" set timeoutlen=500


"*****************************************************************************
" Context
"***************************************************************************** let g:context_add_mappings = 0 let g:context_nvim_no_redraw = 1 let g:context_ellipsis_char = '·' let g:context_highlight_normal = 'Normal'
let g:context_highlight_border = 'Comment'
let g:context_highlight_tag    = 'Special'


"*****************************************************************************
" Search nvim-hlslens
"*****************************************************************************
noremap <silent> n <Cmd>execute('normal! ' . v:count1 . 'n')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap <silent> N <Cmd>execute('normal! ' . v:count1 . 'N')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap * *<Cmd>lua require('hlslens').start()<CR>
noremap # #<Cmd>lua require('hlslens').start()<CR>
noremap g* g*<Cmd>lua require('hlslens').start()<CR>
noremap g# g#<Cmd>lua require('hlslens').start()<CR>
nnoremap <silent> <leader>l :nohlsearch<CR>
lua require('search')


"*****************************************************************************
" Autopairs
"*****************************************************************************
lua require('nvim-autopairs').setup()


"*****************************************************************************
" Git signs
"*****************************************************************************
lua require('gitsigns-config')


"*****************************************************************************
" Galaxyline
"*****************************************************************************
function! ConfigStatusLine()
  lua require('status-line')
endfunction
augroup status_line_init
  autocmd!
  autocmd VimEnter * call ConfigStatusLine()
augroup END


"*****************************************************************************
" Buffer close
"*****************************************************************************
noremap <leader>w :Bdelete this<CR>


"*****************************************************************************
" Git fugitive, twiggy, neogit
"*****************************************************************************
" noremap <Leader>gc :Git commit<CR>
" noremap <Leader>gP :Git push<CR>
" noremap <Leader>gp :Git pull<CR>
" noremap <Leader>gf :Git fetch<CR>
noremap <silent> gs :Neogit<CR>
noremap <silent> gb :Twiggy<CR>
" noremap <Leader>ga :Gwrite<CR>
" noremap <Leader>gd :Gvdiff<CR>
" noremap <Leader>gr :Gremove<CR>
" noremap gh :diffget //2<CR>
" noremap gl :diffget //3<CR>
" Conflict Resolution
" nnoremap <leader>gd :Gvdiff<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>


"*****************************************************************************
" Barbar
"*****************************************************************************
let bufferline = get(g:, 'bufferline', {})
let bufferline.maximum_padding = 1
let bufferline.animation = v:false
" let bufferline.closable = v:false
" Magic buffer-picking mode
nnoremap <silent> <C-s> :BufferPick<CR>
" Move to previous/next
nnoremap <silent> H :BufferPrevious<CR>
nnoremap <silent> L :BufferNext<CR>
" Move to previous/next
nnoremap <silent> <leader>H :BufferMovePrevious<CR>
nnoremap <silent> <leader>L :BufferMoveNext<CR>
" nnoremap <silent> <leader>w :BufferClose<CR>
nnoremap <silent> <leader>kw :BufferCloseAllButCurrent<CR>


"*****************************************************************************
" Commentary
"*****************************************************************************
autocmd FileType html.handlebars setlocal commentstring={{!--\ %s\ --}}
" autocmd FileType typescriptreact setlocal commentstring={/*\ %s\ --}}


"*****************************************************************************
" Hardtime
"*****************************************************************************
let g:hardtime_default_on = 0
let g:hardtime_showmsg = 1
let g:hardtime_ignore_buffer_patterns = [ "COC.*", "NERD.*" ]
let g:list_of_normal_keys = ["h", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["h", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = []


"*****************************************************************************
" Comfortable motion
"*****************************************************************************
let g:comfortable_motion_friction = 200.0
let g:comfortable_motion_air_drag = 0.0


" "*****************************************************************************
" " FZF
" "*****************************************************************************
" " This is the default extra key bindings
" let g:fzf_action = {
"   \ 'ctrl-t': 'tab split',
"   \ 'ctrl-x': 'split',
"   \ 'ctrl-v': 'vsplit' }
" " Enable per-command history.
" " CTRL-N and CTRL-P will be automatically bound to next-history and
" " previous-history instead of down and up. If you don't like the change,
" " explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
" let g:fzf_history_dir = '~/.local/share/fzf-history'
" map <C-f> :Files<CR>
" nnoremap <silent> <leader>p :Files<CR>
" nnoremap <silent> <leader>h :History<CR>
" nnoremap <silent> <leader>b :GCheckout<CR>
" nnoremap <silent> <leader>gf :GF?<CR>
" let g:fzf_tags_command = 'ctags -R'
" " Border color
" let g:fzf_layout = {
" \  'up':'~50%',
" \  'window':
" \    {
" \      'width': 0.85,
" \      'height': 0.85,
" \      'yoffset': 0.5,
" \      'xoffset': 0.5,
" \      'highlight': 'Todo',
" \      'border': 'rounded'
" \    }
" \}
" let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline --bind ctrl-a:select-all,ctrl-d:deselect-all,ctrl-s:toggle-up'
" let $FZF_DEFAULT_COMMAND="rg --files --hidden"
" " Customize fzf colors to match your color scheme
" let g:fzf_colors =
" \ { 'fg':      ['fg', 'Normal'],
"   \ 'bg':      ['bg', 'Normal'],
"   \ 'hl':      ['fg', 'Comment'],
"   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"   \ 'hl+':     ['fg', 'Statement'],
"   \ 'info':    ['fg', 'PreProc'],
"   \ 'border':  ['fg', 'Ignore'],
"   \ 'prompt':  ['fg', 'Conditional'],
"   \ 'pointer': ['fg', 'Exception'],
"   \ 'marker':  ['fg', 'Keyword'],
"   \ 'spinner': ['fg', 'Label'],
"   \ 'header':  ['fg', 'Comment'] }
" " Get Files
" command! -bang -nargs=? -complete=dir Files
"     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)
" " Get text in files with Rg
" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep(
"   \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
"   \   fzf#vim#with_preview(), <bang>0)
" " Ripgrep advanced
" function! RipgrepFzf(query, fullscreen)
"   let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
"   let initial_command = printf(command_fmt, shellescape(a:query))
"   let reload_command = printf(command_fmt, '{q}')
"   let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
"   call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
" endfunction
" command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
" " Git grep
" command! -bang -nargs=* GGrep
"   \ call fzf#vim#grep(
"   \   'git grep --line-number '.shellescape(<q-args>), 0,
"   \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)


"*****************************************************************************
" Startify
"*****************************************************************************
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ ]
let g:startify_bookmarks = [
            \ { 'z': '~/.zshrc' },
            \ { 'v': '~/.vimrc' },
            \ { 't': '~/.tmux.conf' },
            \ ]
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0


"*****************************************************************************
" Coc
"*****************************************************************************
" let g:coc_global_extensions = [
" \  "coc-lua",
" \  "coc-eslint",
" \  "coc-spell-checker",
" \  "coc-json",
" \  "coc-git",
" \  "coc-explorer",
" \  "coc-markdownlint",
" \  "coc-yank",
" \  "coc-actions",
" \  "coc-style-helper",
" \  "coc-smartf",
" \  "coc-yaml",
" \  "coc-tsserver",
" \  "coc-css",
" \  "coc-html",
" \  "coc-vimlsp",
" \  "coc-highlight",
" \  "coc-ember",
" \  "coc-svg",
" \  "coc-emoji",
" \  "coc-snippets",
" \  "coc-flutter-tools",
" \]
" let g:coc_global_config="$HOME/coc-settings.json"
" " TS fix problems
" nnoremap <silent> <Leader>fi :<C-u>CocCommand tsserver.executeAutofix<CR>
" " Show autocomplete when Tab is pressed
" " inoremap <silent><expr> <Tab> coc#refresh()
" " Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()


"*****************************************************************************
" Coc fzf preview
"*****************************************************************************
" fzf preview
" nnoremap <silent> <leader>p :<C-u>FzfPreviewFromResourcesRpc project_mru git<CR>
" " nnoremap <silent> <leader>gs :<C-u>FzfPreviewGitStatusRpc<CR>
" nnoremap <silent> <leader>ga :<C-u>FzfPreviewGitActionsRpc<CR>


"*****************************************************************************
" Coc git
"*****************************************************************************
" nmap [g <Plug>(coc-git-prevchunk)
" nmap ]g <Plug>(coc-git-nextchunk)
" " Show chunk diff at current position
" nmap gs <Plug>(coc-git-chunkinfo)
" " Reset current chunk
" nmap gU :CocCommand git.chunkUndo<CR>
" " nnoremap <silent> gd :<C-u>Git diff<CR>


"*****************************************************************************
" Coc code action
"*****************************************************************************
" nmap <leader>. <Plug>(coc-codeaction)


"*****************************************************************************
" Coc fix current
"*****************************************************************************
" Apply AutoFix to problem on the current line.
" nmap <leader>qf <Plug>(coc-fix-current)


"*****************************************************************************
" Coc definition, implementation, references
"*****************************************************************************
" Remap keys for gotos
" nmap <silent> <leader>d <Plug>(coc-definition)
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> <leader>r <Plug>(coc-references)
" nmap <silent> gr <Plug>(coc-references)


"*****************************************************************************
" Coc rename
"*****************************************************************************
" Remap for rename current word
" nmap <leader>rn <Plug>(coc-rename)


"*****************************************************************************
" Coc SmartF
"*****************************************************************************
" nmap f <Plug>(coc-smartf-forward)
" nmap F <Plug>(coc-smartf-backward)
" nmap ; <Plug>(coc-smartf-repeat)
" nmap , <Plug>(coc-smartf-repeat-opposite)
" augroup Smartf
"   autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=#3897f0
"   autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#504945
" augroup end


"*****************************************************************************
" Coc explorer
"*****************************************************************************
" let g:coc_explorer_global_presets = {
" \   '.vim': {
" \      'root-uri': '~/.vim',
" \   },
" \   'floating': {
" \      'position': 'right',
" \      'width': 50,
" \   },
" \ }
" nmap <space>e :CocCommand explorer --preset floating<CR>
" nmap <space>\ :CocCommand explorer --open-action-strategy previousWindow --position right<CR>
" hi! DiffAdd ctermbg=green ctermfg=green guibg=NONE guifg=#2e7d32
" hi! DiffChange ctermbg=yellow ctermfg=yellow guibg=NONE guifg=#ff8f00
" hi! DiffDelete ctermbg=red ctermfg=red guibg=NONE guifg=#e57373
" " Remap for do codeAction of selected region
" function! s:cocActionsOpenFromSelected(type) abort
"   execute 'CocCommand actions.open ' . a:type
" endfunction
" xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
" nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@


"*****************************************************************************
" is
"*****************************************************************************
map n <Plug>(is-nohl)<Plug>(anzu-n-with-echo)
map N <Plug>(is-nohl)<Plug>(anzu-N-with-echo)

