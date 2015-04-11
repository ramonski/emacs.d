;;; init
; ramonskis emacs config inspired by
; https://github.com/mbriggs/.emacs.d

(add-to-list 'load-path (expand-file-name "~/.emacs.d/init"))

(mapc 'require '(
    init-packages
    init-bootstrap
    init-appearance
    init-navtree
    init-web
    init-plone
    init-python
    init-defuns
    init-tabcompletion
    init-evil
    init-flycheck
    init-whitespace
    init-keymaps
    init-tex
    init-modeline
))

(require 'server)
(unless (server-running-p)
  (message "Starting Emacs server")
  (server-start))

; load custom config at the end
(setq custom-file "~/.emacs.d/init/init-custom.el")
(load custom-file)
