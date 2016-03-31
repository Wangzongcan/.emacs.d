(use-package saveplace
  :config
  (save-place-mode 1)
  (setq save-place-file
        (expand-file-name "saveplace" emacs-savefile-directory)))

(provide 'init-saveplace)
