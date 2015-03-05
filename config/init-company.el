(package-install 'company)

(require 'company)

(defun complete-or-indent ()
  (interactive)
  (if (company-manual-begin)
      (company-complete-common)
    (indent-according-to-mode)))

(setq company-idle-delay nil
      company-auto-complete nil)

(define-key global-map "\t" 'complete-or-indent)
(define-key company-active-map (kbd "\C-n") 'company-select-next)
(define-key company-active-map (kbd "\C-p") 'company-select-previous)
(define-key company-active-map (kbd "\C-g") 'company-abort)


(add-hook 'after-init-hook 'global-company-mode)

(provide 'init-company)
