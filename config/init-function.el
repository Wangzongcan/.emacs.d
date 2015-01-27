;; Function
(defun load-current-file()
  (interactive)
  (let ((current-file buffer-file-name))
    (if current-file
        (kill-this-buffer))
    (load-file current-file)
    (find-file current-file)))

(provide 'init-function)
