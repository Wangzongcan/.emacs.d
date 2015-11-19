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

(provide 'init-functions)
