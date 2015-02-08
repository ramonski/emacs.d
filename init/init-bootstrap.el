(provide 'init-bootstrap)

; User Details
(setq user-full-name "Ramon Bartl")
(setq user-mail-address "ramon_bartl@yahoo.de")

; PATH - support homebrew
(setenv "PATH" (concat "/usr/local/bin:/opt/local/bin:/usr/bin:/bin" (getenv "PATH")))

; No Splash Screen
(setq inhibit-splash-screen t)

; No Scratch Message
(setq initial-scratch-message nil)

; No Bell
(setq visible-bell t)

; No Dialog Boxes
(setq use-dialog-box nil)

; Quicker Response to Keystrokes
(setq echo-keystrokes 0.1)

; YES/NO Handling with y/n
(defalias 'yes-or-no-p 'y-or-n-p)

; Mac Option Key Binding
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;; Temp Files
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
