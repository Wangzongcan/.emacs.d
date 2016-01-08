(require 'company)
(setq company-idle-delay 0.1
      company-require-match nil
      company-dabbrev-downcase nil
      company-dabbrev-ignore-case t
      company-minimum-prefix-length 1
      company-dabbrev-code-everywhere t
      company-dabbrev-code-ignore-case t
      company-frontends '(company-pseudo-tooltip-frontend))

(add-hook 'after-init-hook 'global-company-mode)

(let ((map company-active-map))
  (define-key map "\C-n" 'company-select-next)
  (define-key map "\C-p" 'company-select-previous)
  (define-key map "\C-g" 'company-abort))

(require 'company-flx)
(with-eval-after-load 'company
  (company-flx-mode))

(provide 'company-settings)
