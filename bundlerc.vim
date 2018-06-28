call dein#add('tpope/vim-git')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-abolish')
call dein#add('tpope/vim-cucumber')
call dein#add('tpope/vim-rails')
call dein#add('tpope/vim-haml')
call dein#add('tpope/vim-markdown')
call dein#add('tpope/vim-vinegar')
call dein#add('tpope/vim-unimpaired')
call dein#add('tpope/vim-eunuch')
call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-sensible')
call dein#add('tpope/vim-apathy', { 'merged': 0 })

if has('nvim')
  call dein#add('Shougo/deoplete.nvim')
else
  call dein#add('Shougo/neocomplete.vim')
endif

call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')
call dein#add('honza/vim-clojure-conceal')

call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('w0rp/ale')

call dein#add('mattn/webapi-vim')
call dein#add('mattn/gist-vim')
call dein#add('mattn/emmet-vim')
call dein#add('tomtom/tcomment_vim')
call dein#add('godlygeek/tabular')

call dein#add('bdmartin/vim-json')
call dein#add('othree/yajs.vim', { 'merged': 0})
call dein#add('othree/es.next.syntax.vim', { 'merged': 0})
call dein#add('briancollins/vim-jst')
call dein#add('kchmck/vim-coffee-script')

call dein#add('hail2u/vim-css3-syntax')
call dein#add('cakebaker/scss-syntax.vim')

call dein#add('ervandew/supertab')

call dein#add('nathanaelkane/vim-indent-guides')

call dein#add('bling/vim-airline')

call dein#add('joukevandermaas/vim-ember-hbs', { 'merged': 0 })

call dein#add('adimit/prolog.vim')

call dein#add('airblade/vim-gitgutter')

call dein#add('derekwyatt/vim-scala')

call dein#add('vim-scripts/bufkill.vim')
call dein#add('vim-scripts/gnupg.vim')

call dein#add('lervag/vimtex')

call dein#add('guns/vim-clojure-static')
call dein#add('tpope/vim-fireplace')
call dein#add('tpope/vim-classpath')
call dein#add('vim-scripts/paredit.vim')

call dein#add('luochen1990/rainbow', { 'merged': 0 })

call dein#add('alfredodeza/pytest.vim')

call dein#add('zchee/deoplete-jedi')

call dein#add('flazz/vim-colorschemes')
call dein#add('vim-scripts/ScrollColors')

call dein#add('easymotion/vim-easymotion')

call dein#add('AndrewRadev/vim-eco')

call dein#add('rking/ag.vim')

call dein#add('vim-scripts/groovy.vim')

call dein#add('thinca/vim-quickrun')
call dein#add('tyru/open-browser.vim')
call dein#add('superbrothers/vim-quickrun-markdown-gfm')

call dein#add('edkolev/tmuxline.vim')

call dein#add('ap/vim-css-color')

call dein#add('heartsentwined/vim-emblem')

call dein#add('christoomey/vim-tmux-navigator')

call dein#add('StanAngeloff/php.vim')

call dein#add('editorconfig/editorconfig-vim')

call dein#add('othree/html5.vim')

call dein#add('rizzatti/dash.vim')

call dein#add('isRuslan/vim-es6')

call dein#add('heavenshell/vim-jsdoc')

call dein#add('vim-scripts/languagetool')

call dein#add('Konfekt/FastFold')

call dein#add('Chiel92/vim-autoformat')

call dein#add('Shougo/denite.nvim')

call dein#add('nixprime/cpsm', { 'build': 'PY3=ON ./install.sh' })

call dein#add('ternjs/tern_for_vim', { 'build': 'npm install' })

call dein#add('carlitux/deoplete-ternjs')

call dein#add('prettier/vim-prettier', { 'merged': 0 })

call dein#add('HerringtonDarkholme/yats.vim')

call dein#add('Quramy/vim-js-pretty-template')

call dein#add('Quramy/tsuquyomi')

call dein#add('justinmk/vim-dirvish')

call dein#add('kergoth/vim-bitbake')
