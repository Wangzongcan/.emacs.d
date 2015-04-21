;; ibuffer
(setq ibuffer-expert t
      ibuffer-show-empty-filter-groups nil)

(setq ibuffer-saved-filter-groups
      '(("Home"
         ("Ruby" (mode . ruby-mode))
         ("Web" (mode . web-mode))
         ("Javascript" (mode . js2-mode))
         ("Coffee" (mode . coffee-mode))
         ("Yaml" (mode . yaml-mode))
         ("Dired" (mode . dired-mode))
         ("Magit" (name . "^\*magit"))
         ("Term" (or
                  (mode . term-mode)
                  (mode . eshell-mode)))
         ("Emacs" (filename . "/.emacs.d/"))

         ("Helm" (name . "^\*helm"))
         ("Ag" (name . "^\*ag"))
         )))

(global-set-key (kbd "C-x C-b") 'ibuffer)

(add-hook 'ibuffer-mode-hook
          '(lambda ()
             (hl-line-mode t)

             (ibuffer-auto-mode 1)
             (ibuffer-switch-to-saved-filter-groups "home")))

(provide 'init-ibuffer)
