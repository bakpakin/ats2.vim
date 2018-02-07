" Vim syntax file
" Language: ATS
" Maintainer: Calvin Rose
" Latest Revision: 02/07/2018

if exists("b:current_syntax")
    finish
endif

" ATS-Postiats is case sensitive.
syn case match

" Comments
syn region atsComment start="(\*" end="\*)" contains=atsComment
syn region atsCComment start="/\*" end="\*/"
syn match atsCComment "//.*$"
syn region atsEofComment start="////" end="882b654d-264f-4203-9a5d-d3d1f4a3a219"
highlight link atsComment Comment
highlight link atsCComment Comment
highlight link atsEofComment Comment

" Keywords
" Keywords covered on https://github.com/githwxi/ATS-Postiats/wiki/keywords
syntax keyword atsKeyword absprop abstype absview absviewtype absvtype addr@ assertloc 
syntax keyword atsKeyword castfn dataprop datatype dataview dataviewtype datavtype dynload
syntax keyword atsKeyword extern fn fun infix infixr infixl implement of overload postfix prefix
syntax keyword atsKeyword primplement primplmnt propdef sif sta stadef val staload symintr 
syntax keyword atsKeyword tkindef typedef val val- val+ var view@ viewdef viewtypedef with withtype

" Other keywords or otherwise common tokens
syntax keyword atsKeyword case case+ case- in let val
syntax keyword atsKeyword fix fnx
syntax keyword atsKeyword extern implement
syntax keyword atsKeyword if else then end
syntax keyword atsKeyword exception
syntax keyword atsKeyword where lam local
highlight link atsKeyword Keyword

syn match datsModPath "\u\(\w\|'\)*\."he=e-1

syn match atsCharacter +#"\\""\|#"."\|#"\\\d\d\d"+
syn match atsCharErr +#"\\\d\d"\|#"\\\d"+
syn region atsString start=+"+ skip=+\\\\\|\\"+ end=+"+
highlight link atsString String

syn match atsFunDef "=>"
syn match atsRefAssign ":="
syn match atsTopStop ";;"
syn match atsOperator "\^"
syn match atsOperator "::"
syn match atsAnyVar "\<_\>"
syn match atsKeyChar "!"
syn match atsKeyChar ";"
syn match atsKeyChar "\*"
syn match atsKeyChar "="

syn match atsNumber "\<-\=\d\+\>"
syn match atsNumber "\<-\=0[x|X]\x\+\>"

let b:current_syntax = "dats"
