(use-package company
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

  (setq company-backends
        '(company-elisp company-css
          (company-dabbrev-code company-keywords)
          company-files
          company-dabbrev))

  (setq company-frontends
        '(company-pseudo-tooltip-unless-just-one-frontend
          company-preview-if-just-one-frontend))

  (bind-keys :map company-active-map
             ("C-n" . company-select-next)
             ("C-p" . company-select-previous)))

(provide '30-company)
