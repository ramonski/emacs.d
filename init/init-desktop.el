(provide 'init-desktop)

(defvar session-dir
  (concat (getenv "HOME") "/.emacs.d/sessions/")
  "*Directory to save desktop sessions in")

(defvar my-desktop-session-name-hist nil
  "Desktop session name history")

(defun session-save (&optional name)
  "Save desktop with a name."
  (interactive)
  (unless name
    (setq name (my-desktop-get-session-name "Save session as: ")))
  (make-directory (concat session-dir name) t)
  (desktop-save (concat session-dir name) t)
  ; write tabs
  (with-temp-file (concat session-dir name "/.elscreen")
    (insert (prin1-to-string (elscreen-get-screen-to-name-alist)))))

(defun session-read (&optional name)
  "Read desktop with a name."
  (interactive)
  (unless name
    (setq name (my-desktop-get-session-name "Load session: ")))
  (desktop-read (concat session-dir name))
  (let ((screens (reverse
                        (read
                         (with-temp-buffer
                          (insert-file-contents (concat session-dir name "/.elscreen"))
                          (buffer-string))))))
            (while screens
                (setq screen (car (car screens)))
                (setq buffers (split-string (cdr (car screens)) ":"))
                (if (eq screen 0)
                    (switch-to-buffer (car buffers))
                    (elscreen-find-and-goto-by-buffer (car buffers) t t))
                (while (cdr buffers)
                    (switch-to-buffer-other-window (car (cdr buffers)))
                    (setq buffers (cdr buffers)))
                (setq screens (cdr screens))))
)

(defun my-desktop-get-session-name (prompt)
  (completing-read prompt (and (file-exists-p session-dir)
                               (directory-files session-dir))
                   nil nil nil my-desktop-session-name-hist))
