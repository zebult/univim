"=============================================================================
" File: univim
" Author: a14198
" Created: 2017-08-03
"=============================================================================

scriptencoding utf-8

if !exists('g:loaded_univim')
    finish
endif
let g:loaded_univim = 1

let s:save_cpo = &cpo
set cpo&vim

" initialize "{{{

let spath = expand('<sfile>:p')
let s:univim_script = spath[0 : strridx(spath, 'autoload') - 1] . 'bin/univim'

"}}}

" public functions "{{{

function! univim#play() "{{{
  call s:execute_univim_script('play', '')
endfunction "}}}

function! univim#find() "{{{
  call s:execute_univim_script('find', '')
endfunction "}}}

function! univim#menu(menuname) "{{{
  call s:execute_univim_script('menu', a:menuname)
endfunction "}}}

"}}}

" private functions "{{{

function! s:execute_univim_script(action, arg) "{{{
  let command = s:univim_script . ' ' . a:action . ' ' . a:arg
  call system(command)
endfunction "}}}

"}}}

let &cpo = s:save_cpo
unlet s:save_cpo
