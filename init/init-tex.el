(provide 'init-tex)

(require 'tex-site)
(load "auctex.el" nil t t)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-PDF-mode t) ;; .pdf statt .dvi per default:

;;Zeilenumbruch
(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)
;;Syntax Higlight
(add-hook 'LaTeX-mode-hook 'turn-on-font-lock)
;; Mathe Modus
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;; Reftex einflechten und laden
(setq reftex-plug-into-AUCTeX t)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
;; Satzende ". " statt ". ". " f¨ur M-k: l¨oschen bis Satzende usw.
(setq sentence-end "[.?!][]\"’)}]*\\($\\| \\| \\)[
;;]*") ;; Da ist ein "Newline in der Zeile!"
(setq sentence-end-double-space nil)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
;(add-hook 'LaTeX-mode-hook 'latex-preview-pane-mode)
(setq-default ispell-program-name "aspell")
(add-hook 'LaTeX-mode-hook (function (lambda () (ispell-change-dictionary "en"))))
