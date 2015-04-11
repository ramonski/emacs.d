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
