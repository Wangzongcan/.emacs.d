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

(defun toggle-nlinum()
  (interactive)
  (if (bound-and-true-p nlinum-mode)
      (global-nlinum-mode -1)
    (global-nlinum-mode 1)))

(provide 'init-function)
