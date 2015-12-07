(defun system-is-mac()
  ;; 判断系统是否是 Mac
  (string-equal system-type "darwin"))

(defun load-current-file()
  ;; 重新加载当前文件，使配置生效
  (interactive)
  (let ((current-file buffer-file-name))
    (when current-file
      (kill-this-buffer))
    (condition-case err
        (load-file current-file)
      (error (message "load-file error: %s" err)))
    (find-file current-file)))

(defun delete-current-file()
  ;; 删除当前文件
  (interactive)
  (when (yes-or-no-p "delete current file?")
    (progn
      (delete-file buffer-file-name)
      (kill-this-buffer))))

(defun run-open()
  ;; 使用系统 open 命令打开文件或文件夹
  (interactive)
  (let ((current (or buffer-file-name dired-directory)))
    (message current)
    (when current
      (shell-command (format "open %s" current)))))

(provide 'init-functions)
