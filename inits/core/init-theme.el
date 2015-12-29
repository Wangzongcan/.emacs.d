(use-package monokai-theme
  :ensure t
  :config
  (load-theme 'monokai t)

  (when (not (display-graphic-p))
    (custom-set-faces
     '(default ((t (:background "black"))))
     '(linum ((t (:background "black")))))))

(provide 'init-theme)
