(setq company-idle-delay nil
      company-auto-complete nil
      company-dabbrev-downcase nil

      company-tooltip-limit 10)

(define-key global-map (kbd "<backtab>") 'company-complete)
(define-key company-active-map (kbd "\C-n") 'company-select-next)
(define-key company-active-map (kbd "\C-p") 'company-select-previous)
(define-key company-active-map (kbd "\C-g") 'company-abort)

(add-hook 'after-init-hook 'global-company-mode)

(provide 'init-company)
