" Vim syntax file
" Language: ATS
" Maintainer: Zhiqiang Ren (alex.ren2006 AT gmail DOT com)
" Latest Revision: 05/23/2014

if exists("b:current_syntax")
    finish
endif

" ATS-Postiats is case sensitive.
syn case match

" Comments
syn region atsComment start="(\*" end="\*)" contains=atsComment
syn region atsCComment start="/\*" end="\*/"
syn match atsCComment "//.*$"
syn region atsEofComment start="////" end="pattern impossible 2005747097"
highlight link atsComment Comment
highlight link atsCComment Comment
highlight link atsEofComment Comment

" Keywords
syntax keyword atsKeyword case case+ case- in let val
syntax keyword atsKeyword fun fix fnx
syntax keyword atsKeyword extern implement
syntax keyword atsKeyword if else then end
syntax keyword atsKeyword exception datatype abstype
syntax keyword atsKeyword of where lam local typedef
syntax keyword atsKeyword exception datatype abstype
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
