(provide 'init-navtree)

(require 'helm)
(require 'sr-speedbar)

(setq speedbar-hide-button-brackets-flag t
      speedbar-show-unknown-files t
      speedbar-smart-directory-expand-flag t
      speedbar-directory-button-trim-method 'trim
      speedbar-use-images nil
      speedbar-indentation-width 2
      speedbar-use-imenu-flag t
      sr-speedbar-auto-refresh t
      sr-speedbar-skip-other-window-p t
      )

(defun speedbar-edit-line-and-switch-to-window ()
  (interactive)
  (speedbar-edit-line)
  (other-window 1))

(define-key speedbar-file-key-map (kbd "RET")
  (lambda ()
    (interactive)
    (speedbar-edit-line-and-switch-to-window)
    )
  )

;; More familiar keymap settings.
(add-hook 'speedbar-reconfigure-keymaps-hook
          '(lambda ()
             (define-key speedbar-mode-map [S-up] 'speedbar-up-directory)
             (define-key speedbar-mode-map [right] 'speedbar-flush-expand-line)
             (define-key speedbar-mode-map [left] 'speedbar-contract-line)))

;; Highlight the current line
(add-hook 'speedbar-mode-hook '(lambda () (hl-line-mode 1)))


(require 'neotree)
(require 'evil)
(require 'projectile)

; projectile
(projectile-global-mode)

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
