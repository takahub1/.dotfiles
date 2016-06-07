"** システム設定 **
set nocompatible
set noswapfile                      "swpの作成無効化
set nobackup                        "~の作成無効化
set writebackup                     "上書き成功時に~を削除
set clipboard+=unnamed,autoselect   "クリップボードを共有
 
"** 文字コード設定 **
set encoding=utf-8                  "vim
set fileencoding=utf-8              "保存するファイル
set fencs=iso-2022-jp,enc-jp,cp932  "開くファイル

"自動的に開いたファイルへ移動
:set autochdir
"ctags
" :set tags=/home/thinkpot/c/vim_stm32f4/f4_test/main/tags,/home/thinkpot/c/vim_stm32f4/f4_test/tags
" 現在のディレクトリのtagsを読み込む
:set tags=tags

"キーバインド
"<C-j>でesc
noremap <C-j> <esc>
noremap! <C-j> <esc>

"検索結果のハイライトと取り消し
set hlsearch
nnoremap <C-j><C-j> :nohlsearch<CR> 

" <Space>i でコードをインデント整形
noremap <Space>i gg=<S-g><C-o><C-o>zz

"ハイライトのみ
noremap <Space>a *#

" j, k による移動を折り返されたテキストでも自然に振る舞うように変更
nnoremap j gj
nnoremap k gk

" 検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

"画面を分割してのタグジャンプ
nnoremap <C-h> <C-w><C-]>

"comment out
nmap <C-K> <Plug>(caw:hatpos:toggle)
vmap <C-K> <Plug>(caw:hatpos:toggle)

"** 表示設定 **
syntax on                           "ハイライト表示
set title                           "タイトル
set number                          "行番号
 
set t_Co=256
colorscheme molokai
let g:molokai_original=1
set background=dark
 
set tabstop=4                       "タブ文字幅
set shiftwidth=4                    "インデント幅
set noexpandtab                     "挿入モードでタブ文字有効
set smartindent
set smarttab
 
"** ファイル別設定 **
filetype on
autocmd FileType c,cpp,perl,html set cindent

"NeoBundle
set nocompatible
filetype off            " for NeoBundle
 
if has('vim_starting')
        set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
 
" ここから NeoBundle でプラグインを設定します
NeoBundle "tyru/caw.vim.git"	"コメントアウト
NeoBundle 'Shougo/unite.vim.git'
call neobundle#end()
 
filetype plugin indent on       " restore filetype
