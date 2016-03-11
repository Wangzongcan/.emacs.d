(use-package company
  :diminish company-mode
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  :config
  (setq company-echo-delay 0
        company-idle-delay 0.1
        company-dabbrev-downcase nil
        company-dabbrev-ignore-case t
        company-minimum-prefix-length 1
        company-dabbrev-code-everywhere t
        company-dabbrev-code-ignore-case t)

  ;; Add yasnippet support for all company backends
  ;; https://github.com/syl20bnr/spacemacs/pull/179
  (defun company-mode/backend-with-yas (backend)
    (if (and (listp backend) (member 'company-yasnippet backend))
        backend
      (append (if (consp backend) backend (list backend))
              '(:with company-yasnippet))))

  (setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))

  (bind-keys :map global-map
             ("C-i" . company-indent-or-complete-common))

  (bind-keys :map company-active-map
             ("C-n" . company-select-next)
             ("C-p" . company-select-previous)))

(use-package company-tern
  :ensure t
  :config
  (add-to-list 'company-backends 'company-tern))

(provide '30-company)
