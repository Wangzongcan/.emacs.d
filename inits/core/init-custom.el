(setq custom-file (concat user-emacs-directory "custom.el"))
(if (file-exists-p custom-file)
    (load custom-file)
  (write-region "" nil custom-file))

(provide 'init-custom)
