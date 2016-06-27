(use-package company
   :ensure t
   :init
   (add-hook 'after-init-hook #'global-company-mode)
   :config
   (setq company-idle-delay nil
         company-auto-complete nil
         company-dabbrev-downcase nil
         company-dabbrev-ignore-case t
         company-dabbrev-code-everywhere t
         company-dabbrev-code-ignore-case t)

   (bind-keys :map global-map
              ("C-i" . company-indent-or-complete-common))

   (bind-keys :map company-active-map
              ("C-n" . company-select-next)
              ("C-p" . company-select-previous))

   ;; Add yasnippet support for all company backends
   ;; https://github.com/syl20bnr/spacemacs/pull/179
   (defvar company-mode/enable-yas t "Enable yasnippet for all backends.")

   (defun company-mode/backend-with-yas (backend)
     (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
         backend
       (append (if (consp backend) backend (list backend))
               '(:with company-yasnippet))))

   (setq company-backends (mapcar #'company-mode/backend-with-yas company-backends)))

(provide 'init-company)
