(require 'company)
(autoload 'company-mode "company" nil t)

(add-hook 'after-init-hook 'global-company-mode)

(setq company-idle-delay 0.1)
(setq company-minimum-prefix-length 1)
(setq company-tooltip-limit 30)

(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
