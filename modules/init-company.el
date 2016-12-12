(use-package company-web-html :ensure company-web)

(use-package company
   :ensure t
   :init
   (add-hook 'after-init-hook #'global-company-mode)
   :config

   (setq company-idle-delay 0.2
         company-minimum-prefix-length 2
         company-dabbrev-downcase nil
         company-dabbrev-ignore-case t
         company-dabbrev-code-everywhere t
         company-dabbrev-code-ignore-case t
         company-begin-commands '(self-insert-command))

   (add-to-list 'company-backends 'company-web-html)
   (add-to-list 'company-backends 'company-tern)

   (bind-keys :map global-map
              ("C-i" . company-indent-or-complete-common))

   (bind-keys :map company-active-map
              ("C-n" . company-select-next)
              ("C-p" . company-select-previous)))

(provide 'init-company)
