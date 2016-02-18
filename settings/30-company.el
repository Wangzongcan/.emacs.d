(use-package company
  :diminish company-mode
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  :config
  (setq company-idle-delay 0.1
        company-dabbrev-downcase nil
        company-dabbrev-ignore-case t
        company-minimum-prefix-length 1
        company-dabbrev-code-everywhere t
        company-dabbrev-code-ignore-case t)

  (bind-keys :map company-active-map
             ("C-n" . company-select-next)
             ("C-p" . company-select-previous)))

(provide '30-company)
