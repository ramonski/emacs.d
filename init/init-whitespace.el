(provide 'init-whitespace)

(require 'whitespace)
(global-whitespace-mode t)

(setq-default show-trailing-whitespace t)
(setq-default whitespace-line-column 80)
(setq-default whitespace-style '(trailing space-before-tab indentation empty space-after-tab))
