;; ibuffer
(setq ibuffer-expert t
      ibuffer-show-empty-filter-groups nil)

(setq ibuffer-saved-filter-groups
      '(("home"
         ("Ruby" (mode . ruby-mode))
         ("Web" (mode . web-mode))
         ("Yaml" (mode . yaml-mode))
         ("Dired" (mode . dired-mode))
         ("Magit" (name . "^\*magit"))
         ("Term" (or
                  (mode . term-mode)
                  (mode . eshell-mode)))
         ("Helm" (name . "^\*helm"))
         ("Ag" (name . "^\*ag"))

         (".emacs.d" (filename . "/.emacs.d/"))
         )))

(global-set-key (kbd "C-x C-b") 'ibuffer)

(add-hook 'ibuffer-mode-hook
          '(lambda ()
             (hl-line-mode t)

             (ibuffer-auto-mode 1)
             (ibuffer-switch-to-saved-filter-groups "home")))

(provide 'init-ibuffer)
