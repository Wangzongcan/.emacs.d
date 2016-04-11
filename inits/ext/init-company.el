(use-package company
   :diminish company-mode
   :ensure t
   :init
   (add-hook 'after-init-hook 'global-company-mode)
   :config
   (setq company-echo-delay 0
         company-idle-delay 0
         company-dabbrev-downcase nil
         company-dabbrev-ignore-case t
         company-minimum-prefix-length 1
         company-dabbrev-code-everywhere t
         company-dabbrev-code-ignore-case t
         company-begin-commands '(self-insert-command))

   (bind-keys :map global-map
              ("C-i" . company-indent-or-complete-common))

   (bind-keys :map company-active-map
              ("C-n" . company-select-next)
              ("C-p" . company-select-previous)))

(provide 'init-company)
