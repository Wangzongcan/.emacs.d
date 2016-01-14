(use-package saveplace
  :init
  (setq-default save-place t)
  :config
  (setq save-place-file
        (expand-file-name "saveplace" cache-directory)))

(provide '10-saveplace)
