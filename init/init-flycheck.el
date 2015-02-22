(provide 'init-flycheck)

(require 'flycheck)

(add-hook 'sh-mode-hook 'flycheck-mode)
(add-hook 'json-mode-hook 'flycheck-mode)
(add-hook 'python-mode-hook 'flycheck-mode)
(add-hook 'coffee-mode-hook 'flycheck-mode)
(add-hook 'emacs-lisp-mode-hook 'flycheck-mode)
(add-hook 'lisp-interaction-mode-hook 'flycheck-mode)

(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
(setq flycheck-highlighting-mode 'lines)
(setq flycheck-indication-mode nil)

(add-hook 'flycheck-error-list-mode-hook
          '(lambda () (evil-emacs-state 1)))


; flake8
(setq flycheck-flake8-maximum-line-length 80)
