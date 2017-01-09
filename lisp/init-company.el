(use-package company
   :ensure t
   :diminish company-mode
   :init (add-hook 'after-init-hook #'global-company-mode)
   :config
   (setq company-idle-delay 0.1
         company-minimum-prefix-length 1
         company-dabbrev-downcase nil
         company-dabbrev-ignore-case t
         company-dabbrev-code-everywhere t
         company-dabbrev-code-ignore-case t
         company-begin-commands '(self-insert-command))

   (bind-keys :map global-map
              ("C-i" . company-indent-or-complete-common)

              :map company-active-map
              ("C-n" . company-select-next)
              ("C-p" . company-select-previous)))

(provide 'init-company)
