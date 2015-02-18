;;; init
; ramonskis emacs config inspired by
; https://github.com/mbriggs/.emacs.d

(add-to-list 'load-path (expand-file-name "~/.emacs.d/init"))

(mapc 'require '(
    init-packages
    init-bootstrap
    init-appearance
    init-web
    init-defuns
    init-evil
    init-flycheck
    init-whitespace
    init-keymaps
    init-desktop
))

(require 'server)
(unless (server-running-p)
  (message "Starting Emacs server")
  (server-start))

; load custom config at the end
(setq custom-file "~/.emacs.d/init/init-custom.el")
(load custom-file)
