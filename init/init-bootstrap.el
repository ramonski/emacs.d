(provide 'init-bootstrap)

; User Details
(setq user-full-name "Ramon Bartl")
(setq user-mail-address "ramon_bartl@yahoo.de")

; PATH - support homebrew
(setenv "PATH" (concat "/usr/local/bin:/opt/local/bin:/usr/bin:/bin" (getenv "PATH")))

; No Splash Screen
(setq inhibit-splash-screen t)

; No Scratch Message
(setq initial-scratch-message nil)

; No Bell
(setq visible-bell t)

; No Dialog Boxes
(setq use-dialog-box nil)

; Quicker Response to Keystrokes
(setq echo-keystrokes 0.1)

; 80 columns width
(setq fill-column 80)

; auto read if the file changed on disk
(global-auto-revert-mode)

; YES/NO Handling with y/n
(defalias 'yes-or-no-p 'y-or-n-p)

; Show matching parenthesis
(show-paren-mode t)
; Highlight entire bracket expression
(setq show-paren-style 'expression)

; Auto-insert/close bracket pairs
(electric-pair-mode 1)

; make return key also do indent, for current buffer only
(electric-indent-local-mode 1)

; make return key also do indent, globally
(electric-indent-mode 1)

; Turn on highlighting current line
(global-hl-line-mode 1)

; Show Line Number
(global-linum-mode 1)

; Show cursor position in statusline
(column-number-mode 1)

; Remember recent opened files
(recentf-mode 1)

; No Wrap
(set-default 'truncate-lines t)

; Session mode on
;(desktop-save-mode 1)

; make tab key do indent first then completion.
(setq-default tab-always-indent 'complete)

; Never ever use Tabs
(setq-default indent-tabs-mode nil)

; Set default tab char's display width to 4 spaces
(setq-default tab-width 4)

(cua-selection-mode t)

; Vim like smooth scrolling
(setq scroll-margin 5
scroll-conservatively 9999
scroll-step 1)

; no large file warnings
(setq large-file-warning-threshold nil)

; Mac Option Key Binding
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

; expansion functions
(setq hippie-expand-try-functions-list
  '(try-complete-file-name-partially
    try-complete-file-name
    try-expand-all-abbrevs
    try-expand-list
    try-expand-line
    try-expand-dabbrev
    try-expand-dabbrev-all-buffers
    try-expand-dabbrev-from-kill
    try-complete-lisp-symbol-partially
    try-complete-lisp-symbol))

;; Temp Files
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
