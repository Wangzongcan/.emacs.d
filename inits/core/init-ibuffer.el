;; ibuffer
(setq ibuffer-expert t
      ibuffer-show-empty-filter-groups nil)

(setq ibuffer-saved-filter-groups
      '(("home"
         (".emacs.d" (filename . "/.emacs.d/"))
         ("Ruby" (mode . ruby-mode))
         ("Web" (mode . web-mode))
         ("Yaml" (mode . yaml-mode))
         ("Magit" (name . "^\*magit"))
         ("Helm" (name . "^\*helm"))
         ("Ag" (name . "^\*ag"))
         ("Term" (or
                  (mode . term-mode)
                  (mode . eshell-mode)))
         )))

(global-set-key (kbd "C-x C-b") 'ibuffer)

(add-hook 'ibuffer-mode-hook
          '(lambda ()
             (hl-line-mode t)

             (ibuffer-auto-mode 1)
             (ibuffer-switch-to-saved-filter-groups "home")))

(provide 'init-ibuffer)
