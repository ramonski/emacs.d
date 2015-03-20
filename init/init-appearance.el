(provide 'init-appearance)

;; Load Theme
(require 'solarized)
(if window-system
    (load-theme 'solarized-light t)
    ;(load-theme 'zenburn t)
  (load-theme 'wombat t))

; Font
(let ((font (if (featurep 'ns) "Menlo-15" "Menlo-15")))
  (set-frame-font font)
  (add-to-list 'default-frame-alist
               `(font . ,font)))

; Remove scrollbars, menu bars, and toolbars
;(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

; start in fullscreen
; (add-to-list 'default-frame-alist '(fullscreen . maximized))
