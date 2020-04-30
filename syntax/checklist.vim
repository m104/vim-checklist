" Vim syntax file
" Language: Checklist files
" Maintainer: Adam Collins <adam@m104.us>
" Latest Revision: Apr 29 2020

if exists("b:current_syntax")
  finish
endif

syn match checklistTag            "\[[^ ]\+\]"
syn match checklistSection        "^#.*$"       contains=checklistTag
syn match checklistPendingItem    "^ *-.*$"     contains=checklistTag
syn match checklistFinishedItem   "^ *+.*$"     contains=checklistTag
syn match checklistQuestionItem   "^ *?.*$"     contains=checklistTag

hi def link checklistTag           Tag
hi def link checklistSection       Label
hi def link checklistPendingItem   Todo
hi def link checklistFinishedItem  Comment
hi def link checklistQuestionItem  Question

let b:current_syntax = "checklist"