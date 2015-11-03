;; company-mode
(require 'company)

(setq company-idle-delay 0.2
      company-minimum-prefix-length 2
      company-require-match nil
      company-dabbrev-ignore-case nil
      company-dabbrev-downcase nil
      company-frontends '(company-pseudo-tooltip-frontend))

(let ((map company-active-map))
  (define-key map (kbd "C-n") 'company-select-next)
  (define-key map (kbd "C-p") 'company-select-previous)
  (define-key map (kbd "C-g") 'company-abort))

(add-hook 'after-init-hook 'global-company-mode)

(provide 'init-company)
