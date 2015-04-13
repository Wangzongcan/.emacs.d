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

(defun exit-emacs ()
  ;; 退出 emacs 时先确认
  (interactive)
  (if (yes-or-no-p (format "exit emacs?"))
      (save-buffers-kill-emacs)))

(require 'el-init)
(el-init-provide)
