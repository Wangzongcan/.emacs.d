;; web-mode
(use-package web-mode
  :defer t
  :mode
  (("\\.html\\'" . web-mode)
   ("\\.erb\\'" . web-mode))
  :init
  (progn
    (setq-default
     web-mode-markup-indent-offset 2
     web-mode-markup-indent-offset 2
     web-mode-css-indent-offset 2
     web-mode-code-indent-offset 2
     web-mode-script-padding 2)))

(provide 'init-web)
