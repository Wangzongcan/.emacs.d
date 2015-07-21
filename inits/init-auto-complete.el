(ac-config-default)

(setq ac-auto-start nil)

;; ac-helm

(global-set-key (kbd "C-;") 'ac-complete-with-helm)
(define-key ac-complete-mode-map (kbd "C-;") 'ac-complete-with-helm)

(provide 'init-auto-complete)
