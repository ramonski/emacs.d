(provide 'init-navtree)

(require 'dired+)
(toggle-diredp-find-file-reuse-dir 1)

(require 'sr-speedbar)
(setq speedbar-hide-button-brackets-flag t
      speedbar-show-unknown-files t
      speedbar-smart-directory-expand-flag t
      speedbar-directory-button-trim-method 'trim
      speedbar-use-images nil
      speedbar-indentation-width 2
      speedbar-use-imenu-flag t
      sr-speedbar-width 40
      sr-speedbar-width-x 40
      sr-speedbar-auto-refresh t
      sr-speedbar-skip-other-window-p t
      )

(defun speedbar-edit-line-and-switch-to-window ()
  (interactive)
  (speedbar-edit-line)
  (other-window 1))
(define-key speedbar-file-key-map (kbd "RET") (lambda () (interactive) (speedbar-edit-line-and-switch-to-window)))


;; More familiar keymap settings.
(add-hook 'speedbar-reconfigure-keymaps-hook
          '(lambda ()
             (define-key speedbar-mode-map [S-up] 'speedbar-up-directory)
             (define-key speedbar-mode-map [right] 'speedbar-flush-expand-line)
             (define-key speedbar-mode-map [left] 'speedbar-contract-line)))

;; Highlight the current line
(add-hook 'speedbar-mode-hook '(lambda () (hl-line-mode 1)))
