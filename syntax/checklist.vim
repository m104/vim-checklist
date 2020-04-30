" Vim syntax file
" Language: Checklist files
" Maintainer: Adam Collins <adam@m104.us>
" Latest Revision: Apr 29 2020

if exists("b:current_syntax")
  finish
endif


syn match checklistTag               "\[[^ ]\+\]"  contained

syn match checklistSection           "# .*$"       contains=checklistTag

syn match checklistPendingMark       "-"           contained
syn match checklistPendingItem       "^ *- .*$"    contains=checklistTag,checklistPendingMark

syn match checklistOptionalMark      "?"           contained
syn match checklistOptionalItem      "^ *? .*$"    contains=checklistTag,checklistOptionalMark

syn match checklistCompletedMark     "+"           contained
syn match checklistCompletedItem     "^ *+ .*$"    contains=checklistTag,checklistCompletedMark

syn match checklistBulletMark        "\*"          contained
syn match checklistBulletItem        "^ *\* .*$"   contains=checklistTag,checklistBulletMark


hi def link checklistTag            Constant

hi def link checklistSection        PreProc

hi def link checklistPendingMark    Todo
hi def link checklistPendingItem    Todo

hi def link checklistOptionalMark   Conditional
hi def link checklistOptionalItem   Todo

hi def link checklistCompletedMark  Comment
hi def link checklistCompletedItem  Comment

hi def link checklistBulletMark     Function
hi def link checklistBulletItem     Comment

let b:current_syntax = "checklist"
