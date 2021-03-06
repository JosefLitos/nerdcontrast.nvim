" Vim syntax file
" Language:		configure.in script: M4 with sh
" Former Maintainer:	Christian Hammesr <ch@lathspell.westend.com>
" Last Change:	2018 Feb 03
" 				(patch from Yngve Inntjore Levinsen to detect AC_MSG)
" 				(patch from Khym Chanur to add @Spell)
" 				(patch from James McCoy to fix paren matching)

" Well, I actually even do not know much about m4. This explains why there
" is probably very much missing here, yet !
" But I missed good highlighting when editing my GNU autoconf/automake
" script, so I wrote this quick and dirty patch.


" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" define the config syntax
syn match   configdelimiter "[()\[\];,:{}]"
syn match   configoperator  "[=|&\*\+\<\>]"
syn match   configcomment   "\(dnl.*\)\|\(#.*\)" contains=configDnl,@Spell
syn match   configfunction  "\<[A-Z_][A-Z0-9_]*\>"
syn match   confignumber    "[-+ ]*\d[.0-9]*" contained contains=configoperator
syn keyword configDnl   	dnl contained
syn keyword configkeyword   if then else fi test for in do done true false
syn keyword configspecial   cat rm eval
syn match   configvalue    "[^=]*$" contained contains=confignumber,configoperator,configdelimiter,configkeyword
syn match   configlabel    "[a-zA-Z-_ \t]*=" contained contains=configoperator
syn match   configline     "^[a-zA-Z-_ \t]\+=.*$" contains=configlabel,configvalue,configdelimiter,confignumber

" This shortens the script, see syn-ext-match..
syn region  configstring    start=+\z(["'`]\)+ skip=+\\\z1+ end=+\z1+ contains=@Spell

" Anything inside AC_MSG_TYPE([...])  and AC_MSG_TYPE(...) is a string.
syn region  configmsg matchgroup=configfunction start="AC_MSG_[A-Z]*\ze(\[" matchgroup=configdelimiter end="\])" contains=configdelimiter,@Spell
syn region  configmsg matchgroup=configfunction start="AC_MSG_[A-Z]*\ze([^[]" matchgroup=configdelimiter end=")" contains=configdelimiter,@Spell

" Define the default highlighting.
" Only when an item doesn't have highlighting yet

hi def link configdelimiter Delimiter
hi def link configoperator  Operator
hi def link configcomment   Comment
hi def link configDnl       Comment
hi def link configfunction  Function
hi def link confignumber    Number
hi def link configkeyword   Keyword
hi def link configlabel     Variable
hi def link configspecial   Special
hi def link configstring    String
hi def link configvalue     String
hi def link configmsg       String


let b:current_syntax = "config"

