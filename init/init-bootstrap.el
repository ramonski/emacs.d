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

; YES/NO Handling with y/n
(defalias 'yes-or-no-p 'y-or-n-p)

; Cut/Copy/Paste Mode
(cua-mode 1)

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

; Vim like smooth scrolling
(setq scroll-margin 5
scroll-conservatively 9999
scroll-step 1)

; Mac Option Key Binding
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;; Temp Files
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
