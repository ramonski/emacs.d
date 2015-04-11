(provide 'init-evil)

; Enable Evil Mode
(require 'evil)
(evil-mode 1)

; Comma is my leader
(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader ",")
(setq evil-leader/in-all-states 1)

; Don't wait for any other keys after escape is pressed.
(setq evil-esc-delay 0)

; enable vim like surrounds
(global-evil-surround-mode 1)

; enable vim visual star searches
(global-evil-visualstar-mode t)

; Persist Higlight on Search
(require 'evil-search-highlight-persist)
(global-evil-search-highlight-persist t)

(require 'auto-highlight-symbol)
(global-auto-highlight-symbol-mode t)

; NERD Commenter
(require 'evil-nerd-commenter)
(evilnc-default-hotkeys)

; Writegood mode
(require 'writegood-mode)

; Tab support
(global-evil-tabs-mode t)

; Surround mode
(require 'evil-surround)
(global-evil-surround-mode 1)

; Key Bindings in Normal Mode
(evil-define-key 'normal global-map
  (kbd "<f2>")         'save-buffer    ; save the current buffer
  (kbd "<f3>")         'toggle-truncate-lines
  (kbd "<f4>")         'delete-window
  (kbd "C-S-a")        'evil-numbers/inc-at-pt
  (kbd "C-S-x")        'evil-numbers/dec-at-pt
  (kbd "C-<tab>")      'neotree-toggle
  (kbd "C-<left>")     'windmove-left
  (kbd "C-<down>")     'windmove-down
  (kbd "C-<up>")       'windmove-up
  (kbd "C-<right>")    'windmove-right
  (kbd "M-<right>")    'elscreen-next
  (kbd "M-<left>")     'elscreen-previous
  (kbd "M-t")          'elscreen-create
  (kbd "M-w")          'elscreen-kill
  (kbd "M-<return>")   'evil-search-highlight-persist-remove-all
  (kbd "M-p")          'helm-cmd-t
)

; Key Bindings with Leader Prefix
(evil-leader/set-key
  "b"   'ido-switch-buffer
  "e"   'dired
  "k"   'kill-buffer
  "ws"  'delete-trailing-whitespace
  "wg"  'writegood-mode
  "gg"  'writegood-grade-level
  "ge"  'writegood-reading-ease
  "m"   'writegood-reading-ease
  "t"   'helm-cmd-t
  "fj"  'format-json
  ;; auto-highlight-symbol ------------------------------------------------------
  "hb" 'ahs-chrange-whole-buffer
  "hd" 'ahs-chrange-display
  "he" 'ahs-edit-mode
  "hf" 'ahs-chrange-beginning-of-defun
  "hh" 'auto-highlight-symbol-mode
  "hn" 'ahs-forward
  "hp" 'ahs-backward
  ;; nerd commenter ------------------------------------------------------
  "cc" 'comment-or-uncomment-region
  "cu" 'uncomment-region
)

; ESC always quits
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(global-set-key [escape] 'keyboard-quit)
