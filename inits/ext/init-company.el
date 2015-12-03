(use-package company
  :ensure t
  :defer t
  :init
  (setq company-idle-delay 0.1
        company-require-match nil
        company-dabbrev-downcase nil
        company-dabbrev-ignore-case t
        company-minimum-prefix-length 1
        company-dabbrev-code-everywhere t
        company-dabbrev-code-ignore-case t
        company-frontends '(company-pseudo-tooltip-frontend))
  (add-hook 'after-init-hook 'global-company-mode)
  :config
  (let ((map company-active-map))
    (bind-key "C-n" 'company-select-next map)
    (bind-key "C-p" 'company-select-previous map)
    (bind-key "C-g" 'company-abort map)))

(use-package company-flx
  :ensure t
  :defer t
  :init
  (company-flx-mode))

(provide 'init-company)
