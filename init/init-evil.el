(provide 'init-evil)

; Enable Evil Mode
(evil-mode 1)

; Comma is my leader
(global-evil-leader-mode)
(evil-leader/set-leader ",")

; enable vim like surrounds
(global-evil-surround-mode 1)

; enable vim visual star searches
(global-evil-visualstar-mode t)

; Persist Higlight on Search
(require 'evil-search-highlight-persist)
(global-evil-search-highlight-persist t)

; Navigation
(require 'nav)

; Powerline
(require 'powerline)
(powerline-vim-theme)

; NERD Commenter
(require 'evil-nerd-commenter)
(evilnc-default-hotkeys)

; Writegood mode
(require 'writegood-mode)

; PeepOpen
(require 'peepopen)
(textmate-mode)
(setq ns-pop-up-frames nil)

; Key Bindings in Normal Mode
(evil-define-key 'normal global-map
  (kbd "<f2>")         'save-buffer    ; save the current buffer
  (kbd "<f3>")         'toggle-truncate-lines
  (kbd "<f4>")         'delete-window
  (kbd "C-<tab>")      'nav-toggle
  (kbd "C-<left>")     'windmove-left
  (kbd "C-<down>")     'windmove-down
  (kbd "C-<up>")       'windmove-up
  (kbd "C-<right>")    'windmove-right
  (kbd "M-<right>")    'elscreen-next
  (kbd "M-<left>")     'elscreen-previous
  (kbd "M-t")          'elscreen-create
  (kbd "M-w")          'elscreen-kill
  (kbd "M-<return>")   'evil-search-highlight-persist-remove-all
)

; Key Bindings with Leader Prefix
(evil-leader/set-key
  "e"   'find-file
  "b"   'switch-to-buffer
  "k"   'kill-buffer
  "ws"  'delete-trailing-whitespace
  "p"   'peepopen-goto-file-gui
  "wg"  'writegood-mode
  "gg"  'writegood-grade-level
  "ge"  'writegood-reading-ease
  "m"   'writegood-reading-ease
)
