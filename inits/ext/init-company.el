(require 'company)

(setq company-idle-delay nil
      company-auto-complete nil)

(add-hook 'after-init-hook 'global-company-mode)

(provide 'init-company)
