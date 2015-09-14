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

(defun toggle-linum()
  (interactive)
  (if (bound-and-true-p linum-mode)
      (global-linum-mode -1)
    (global-linum-mode 1)))

(provide 'init-function)
