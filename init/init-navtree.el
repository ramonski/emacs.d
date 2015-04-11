(provide 'init-navtree)

(require 'neotree)
(setq neo-smart-open t)

; projectile
(projectile-global-mode)

(add-hook 'neotree-mode-hook
  (lambda ()
    (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-stretch-toggle)
    (define-key evil-normal-state-local-map (kbd "q")   'neotree-hide)
    (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)
    (define-key evil-normal-state-local-map (kbd "|")   'neotree-enter-vertical-split)
    (define-key evil-normal-state-local-map (kbd "-")   'neotree-enter-horizontal-split)
    (define-key evil-normal-state-local-map (kbd "C")   'neotree-change-root)
    (define-key evil-normal-state-local-map (kbd "r")   'neotree-refresh)
    (define-key evil-normal-state-local-map (kbd "u")   'neotree-select-up-node)
    (define-key evil-normal-state-local-map (kbd ".")   'neotree-hidden-file-toggle)
  )
)
