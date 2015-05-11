(require 'company)

(setq company-idle-delay nil
      company-auto-complete nil)

(add-hook 'after-init-hook 'global-company-mode)

(define-key company-mode-map (kbd "C-;") 'company-complete)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-g") 'company-abort)

(provide 'init-company)
