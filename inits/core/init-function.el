;; function
(defun load-current-file()
  (interactive)
  (let ((current-file buffer-file-name))
    (if current-file
        (kill-this-buffer))
    (condition-case err
        (load-file current-file)
      (error (message "load-file error: %s" err)))
    (find-file current-file)))

(defun exit-emacs ()
  (interactive)
  (if (yes-or-no-p (format "exit emacs?"))
      (save-buffers-kill-emacs)))
(global-set-key (kbd "C-x C-c") 'exit-emacs)

(provide 'init-function)
