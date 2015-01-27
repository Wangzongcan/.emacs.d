;; Ibuffer
(require 'ibuffer)

(setq ibuffer-expert t
      ibuffer-show-empty-filter-groups nil)

(setq ibuffer-saved-filter-groups
      '(("home"
         ("Magit" (name . "\*magit"))
         ("Ag" (name ."\*Ag")))))

(global-set-key (kbd "C-x C-b") 'ibuffer)

(add-hook 'ibuffer-mode-hook
          '(lambda ()
             (ibuffer-auto-mode 1)
             (ibuffer-switch-to-saved-filter-groups "home")))

(provide 'init-ibuffer)
