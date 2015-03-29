(provide 'init-flycheck)

(require 'flycheck)

;(add-hook 'sh-mode-hook 'flycheck-mode)
(add-hook 'json-mode-hook 'flycheck-mode)
(add-hook 'coffee-mode-hook 'flycheck-mode)
(add-hook 'emacs-lisp-mode-hook 'flycheck-mode)
(add-hook 'lisp-interaction-mode-hook 'flycheck-mode)
(add-hook 'markdown-mode-hook 'flyspell-mode)

(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
(setq flycheck-highlighting-mode 'lines)
(setq flycheck-indication-mode nil)

(add-hook 'flycheck-error-list-mode-hook
          '(lambda () (evil-emacs-state 1)))

; using flake8 - config in ~/.config/flake8
; pip install flake8
; http://flake8.readthedocs.org/en/latest/config.html
;(add-hook 'python-mode-hook 'flycheck-mode)
