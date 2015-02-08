(provide 'init-whitespace)

(require 'whitespace)
(global-whitespace-mode t)

(setq whitespace-line-column 80)
(setq whitespace-style '(face tabs trailing lines-tail))
