"                                                     
"             _|                                      
" _|      _|      _|_|_|  _|_|    _|  _|_|    _|_|_|  
" _|      _|  _|  _|    _|    _|  _|_|      _|        
"   _|  _|    _|  _|    _|    _|  _|        _|        
"     _|      _|  _|    _|    _|  _|          _|_|_|  
"                                                     
" Auther: kash

" Basic Settings
set nocompatible	"vi互換にしない
set encoding=utf-8

" basic
set number			"show line-number
set showmatch		"括弧入力時に対応する括弧のハイライト
set matchtime=5		"ハイライトが表示される時間
set ruler			"カーソル位置表示
set nolist			"show tab,space,  ... .etc
"set listchars=tab:≫.,extends:>,trail:-
set wrap			"長い行を折り返し表示
set display=lastline	"どんなに長い行でも表示(デフォルトだとあまりに長いと表示されない)
set showcmd
set title			"show title
set virtualedit=block
set whichwrap=b,s,[,],<,>

" status-line
set laststatus=2	"常にステータス行を表示する行
set cmdheight=2		"コマンドラインの高さ
set statusline=%<	"行が長すぎるときに切り詰める位置
"set statusline=%F%m%r%h%w\ %{'['.(&fenc!=''?&fenc:&enc).']'}\ [%{&ff}]\
"			   \ [%Y]\ \ [%l/%L]\ [%p%%]\ %=[HEX=\%02.2B]\ [ASCII=\%03.3b]
set statusline+=%y
if winwidth(0) >= 130
	set statusline+=%F		"ファイルのフルパス
else
	set statusline+=%t		"ファイル名のみ
endif
set statusline+=%m		"修正フラグ
set statusline+=%r		"読み込み専用フラグ
set statusline+=%h		"ヘルプバッファフラグ
set statusline+=%w		"プレビューウィンドウフラグ
set statusline+=\  
set statusline+=[%l/%L]	"現在の行数/総行数
set statusline+=\  
set statusline+=[%p%%]	"現在ファイルの何%の位置か
set statusline+=\  
set statusline+=%=
set statusline+=[HEX\%02.2B]
set statusline+=\  
set statusline+=[ASCII=\%03.3b] 
set statusline+=%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}


" indent
set tabstop=4		"tab size
set softtabstop=4
set autoindent
set smartindent
set cindent			"C言語の時に最高
set noexpandtab		"tab to space (expandtab/noexpandtab)
set backspace=indent,eol,start	" バックスペースでインデントなどを削除


" search
set ignorecase		"case-sensitivity
set smartcase		"case-sensitivity when mixed lower and upper
set wrapscan		"検索終了時に最初に戻る
set hlsearch		"enable highlight when search
set history=100		"コマンドや検索パターンを100個まで残す
set noincsearch		"インクリメンタルサーチを使わない

"copy & cut
set clipboard=unnamed,unnamedplus



" complete
set wildmenu


" color
set background=dark	"dark or light
set t_Co=256
let g:hybrid_use_Xresources = 1		" linuxのときに有効
colorscheme hybrid  "lucius  hybrid molokai
syntax on			"コード色分け
set cursorline

" other
set mouse=a
set ttymouse=xterm2
set nostartofline	"ページアップ・ダウン時にカーソル位置を動かさない
set autoread		"外部でファイルに変更がされた場合は読みなおす
set hidden			"保存されていないファイルが有るときでも別のファイルを開くことができる
autocmd BufRead,BufNewFile *.md set filetype=markdown
set pumheight=5		"補完メニューのポップアップの高さ
