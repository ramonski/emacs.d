(provide 'init-keymaps)

; Global Mappings
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-q") 'save-buffers-kill-emacs)
(global-set-key (kbd "M-a") 'mark-whole-buffer)
(global-set-key (kbd "C-<left>")  'windmove-left)
(global-set-key (kbd "C-<down>")  'windmove-down)
(global-set-key (kbd "C-<up>")    'windmove-up)
(global-set-key (kbd "C-<right>") 'windmove-right)
(global-set-key (kbd "C-<tab>")   'nav-toggle)
(global-set-key (kbd "<f2>")      'save-buffer)
(global-set-key (kbd "<f3>")      'toggle-truncate-lines)
(global-set-key (kbd "<f4>")      'delete-window)

; Normal Mode
(define-key evil-normal-state-map "b" 'ido-switch-buffer)
(define-key evil-normal-state-map "B" 'ibuffer)
(define-key evil-normal-state-map "e" 'ido-find-file)
(define-key evil-normal-state-map (kbd "<tab>") 'indent-for-tab-command)

; ESC always quits
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(global-set-key [escape] 'keyboard-quit)
