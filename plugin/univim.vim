"=============================================================================
" File: univim
" Author: a14198
" Created: 2017-08-03
"=============================================================================

scriptencoding utf-8

if exists('g:loaded_univim')
    finish
endif
let g:loaded_univim = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 UnivimPlay :call univim#play()
command! -nargs=0 UnivimFind :call univim#find()
command! -nargs=1 UnivimMenu :call univim#menu(<q-args>)

let &cpo = s:save_cpo
unlet s:save_cpo
