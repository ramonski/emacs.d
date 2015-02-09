(provide 'init-whitespace)

(require 'whitespace)
(global-whitespace-mode t)

(setq whitespace-line-column 80)
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))
(setq show-trailing-whitespace t)
