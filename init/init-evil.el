(provide 'init-evil)

; Enable Evil Mode
(evil-mode 1)

;; Don't wait for any other keys after escape is pressed.
(setq evil-esc-delay 0)

; Comma is my leader
(global-evil-leader-mode)
(evil-leader/set-leader ",")
(setq evil-leader/in-all-states 1)

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

; PeepOpen
(require 'peepopen)
(textmate-mode)
(setq ns-pop-up-frames nil)

; Tab support
(global-evil-tabs-mode t)

; evil org mode
(require 'evil-org)

; Surround mode
(require 'evil-surround)
(global-evil-surround-mode 1)

; Navigation
(require 'neotree)

(add-hook 'neotree-mode-hook
  (lambda ()
    (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-stretch-toggle)
    (define-key evil-normal-state-local-map (kbd "q")   'neotree-hide)
    (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)
    (define-key evil-normal-state-local-map (kbd "|")   'neotree-enter-vertical-split)
    (define-key evil-normal-state-local-map (kbd "-")   'neotree-enter-horizontal-split)
    (define-key evil-normal-state-local-map (kbd "C")   'neotree-change-root)
    (define-key evil-normal-state-local-map (kbd "r")   'neotree-refresh)
    (define-key evil-normal-state-local-map (kbd "u")   'neotree-select-up-node)
    (define-key evil-normal-state-local-map (kbd ".")   'neotree-hidden-file-toggle)
  )
)

; Key Bindings in Normal Mode
(evil-define-key 'normal global-map
  (kbd "<f2>")         'save-buffer    ; save the current buffer
  (kbd "<f3>")         'toggle-truncate-lines
  (kbd "<f4>")         'delete-window
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
  "e"   'find-file
  "b"   'switch-to-buffer
  "k"   'kill-buffer
  "ws"  'delete-trailing-whitespace
  "p"   'peepopen-goto-file-gui
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
  ;; auto-highlight-symbol ------------------------------------------------------
)
