;; Ibuffer
(require 'ibuffer)

(setq ibuffer-expert t
      ibuffer-show-empty-filter-groups nil)

(setq ibuffer-saved-filter-groups
      '(("home"
         (".emacs.d" (filename . "/.emacs.d/"))
         ("Magit" (name . "^\*magit"))
         ("Helm" (name . "^\*helm"))
         )))

(global-set-key (kbd "C-x C-b") 'ibuffer)

(add-hook 'ibuffer-mode-hook
          '(lambda ()
             (ibuffer-auto-mode 1)
             (ibuffer-switch-to-saved-filter-groups "home")))

(provide 'init-ibuffer)
