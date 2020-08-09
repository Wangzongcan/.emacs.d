;; Company Mode
(use-package company
  :hook (after-init . global-company-mode)
  :bind (("TAB" . company-indent-or-complete-common)
         :map company-active-map
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous))
  :config
  (setq company-idle-delay nil))

;; Ivy
(use-package ivy
  :hook (after-init . ivy-mode)
  :init
  (setq ivy-use-selectable-prompt t
        ivy-initial-inputs-alist nil)
  :config
  (setcdr (assq t ivy-format-functions-alist)
          #'ivy-format-function-line))

(use-package counsel
  :hook (ivy-mode . counsel-mode)
  :bind ("C-s" . swiper-isearch))

(provide 'init-completion)
