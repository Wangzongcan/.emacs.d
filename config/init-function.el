;; Function
(defun load-current-file()
  (interactive)
  (let ((current-file buffer-file-name))
    (if current-file
        (kill-this-buffer))
    (load-file current-file)
    (find-file current-file)))

;; projectile helm ag
(defun projectile-helm-ag ()
  (interactive)
  (helm-ag (projectile-project-root)))

(defun projectile-helm-do-ag ()
  (interactive)
  (helm-do-ag (projectile-project-root)))

(provide 'init-function)
