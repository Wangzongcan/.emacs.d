(use-package company
  :ensure t
  :defer t
  :init
  (setq company-idle-delay 0.1
        company-require-match nil
        company-dabbrev-downcase nil
        company-dabbrev-ignore-case nil
        company-minimum-prefix-length 2
        company-frontends '(company-pseudo-tooltip-frontend))
  :config
  (let ((map company-active-map))
    (bind-key "C-n" 'company-select-next map)
    (bind-key "C-p" 'company-select-previous map)
    (bind-key "C-g" 'company-abort map)
    )
  (add-hook 'after-init-hook 'global-company-mode))

(provide 'init-company)
