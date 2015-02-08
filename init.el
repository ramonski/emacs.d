;;; init
; ramonskis emacs config inspired by
; https://github.com/mbriggs/.emacs.d

(add-to-list 'load-path (expand-file-name "~/.emacs.d/init"))

(mapc 'require '(
    init-packages
    init-bootstrap
    init-appearance
    init-shell
    init-evil
    init-defuns
    init-keymaps
    init-flycheck
    init-whitespace
))

(require 'server)
(unless (server-running-p)
  (message "Starting Emacs server")
  (server-start))

; load custom config at the end
(setq custom-file "~/.emacs.d/init/init-custom.el")
(load custom-file)
