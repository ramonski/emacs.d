(provide 'init-defuns)

; format region to json
(defun format-json ()
  (interactive)
  (let ((cmd "python -mjson.tool"))
    (shell-command-on-region (region-beginning) (region-end) cmd nil t)))


; insert ipdb breakpoint
(defun insert-ipdb ()
  "Add an ipdb breakpoint"
  (interactive)
  (newline-and-indent)
  (insert "import ipdb; ipdb.set_trace()")
  (highlight-lines-matching-regexp "^[ ]*import ipdb; ipdb.set_trace()"))


; insert date
(defun insert-date ()
  "Insert current date yyyy-mm-dd."
  (interactive)
  (when (use-region-p)
    (delete-region (region-beginning) (region-end) )
    )
  (insert (format-time-string "%Y-%m-%d")))


(defun indent-or-expand (arg)
  "Either indent according to mode, or expand the word preceding point."
  (interactive "*P")
  (if (and
       (or (bobp) (= ?w (char-syntax (char-before))))
       (or (eobp) (not (= ?w (char-syntax (char-after))))))
      (hippie-expand arg)
    (indent-according-to-mode)))
