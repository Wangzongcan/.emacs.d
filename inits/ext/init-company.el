(use-package company
   :ensure t
   :init
   (add-hook 'after-init-hook #'global-company-mode)
   :config
   (setq company-idle-delay nil
         company-auto-complete nil
         company-dabbrev-downcase nil
         company-dabbrev-ignore-case t
         company-dabbrev-code-everywhere t
         company-dabbrev-code-ignore-case t)

   (bind-keys :map global-map
              ("C-i" . company-indent-or-complete-common))

   (bind-keys :map company-active-map
              ("C-n" . company-select-next)
              ("C-p" . company-select-previous)))

(provide 'init-company)
