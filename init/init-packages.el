(provide 'init-packages)

; require common lisp
(require 'cl)

(require 'package)
(add-to-list 'package-archives
     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(defvar required-packages
  '(
    ag
    auctex
    auto-highlight-symbol
    autopair
    base16-theme
    coffee-mode
    csv-mode
    dired+
    evil
    evil-leader
    evil-nerd-commenter
    evil-numbers
    evil-search-highlight-persist
    evil-surround
    evil-tabs
    evil-visualstar
    find-file-in-project
    flycheck
    helm
    helm-cmd-t
    helm-ls-git
    jinja2-mode
    latex-preview-pane
    magit
    markdown-mode
    markdown-mode+
    markdown-toc
    neotree
    nginx-mode
    projectile
    python-mode
    rainbow-mode
    smart-mode-line
    smooth-scrolling
    solarized-theme
    textmate
    vcl-mode
    web-mode
    whitespace
    writegood-mode
    yaml-mode
  ) "a list of packages to ensure are installed at launch.")

; method to check if all packages are installed
(defun packages-installed-p ()
  (loop for p in required-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

; if not all packages are installed, check one by one and install the missing ones.
(unless (packages-installed-p)
  ; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ; install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))

