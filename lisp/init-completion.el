;; Orderless
(use-package orderless
  :custom
  (completion-styles '(substring orderless))
  (completion-category-defaults nil)
  (completion-category-overrides '((file (styles partial-completion)))))

;; Vertico
(use-package vertico
  :hook (after-init . vertico-mode))

;; Consult
(use-package consult
  :general
  ("C-s" 'consult-line)
  ("C-x b" 'consult-buffer)
  :config
  (setq consult-project-root-function
        (lambda ()
          (when-let (project (project-current))
            (car (project-roots project))))))

;; Embark
(use-package embark
  :general
  (minibuffer-local-map
   "C-." 'embark-act
   "C-c C-o" 'embark-export)
  :custom
  (prefix-help-command #'embark-prefix-help-command))

(use-package embark-consult
  :after (embark consult)
  :demand t
  :hook
  (embark-collect-mode . consult-preview-at-point-mode))

;; Company Mode
(use-package company
  :unless window-system
  :hook (after-init . global-company-mode)
  :general
  ("TAB" 'company-indent-or-complete-common)
  (company-active-map
   "TAB" 'company-complete-common-or-cycle
   "<tab>" 'company-complete-common-or-cycle
   "C-n" 'company-select-next
   "C-p" 'company-select-previous)
  :custom
  (company-idle-delay 0)
  (company-minimum-prefix-length 1)
  (company-require-match nil)
  (company-dabbrev-downcase nil)
  (company-dabbrev-ignore-case nil))

;; Corfu
(use-package corfu
  :hook (after-init . global-corfu-mode)
  :custom
  (corfu-quit-no-match 'separator))

(use-package cape
  :init
  (add-to-list 'completion-at-point-functions #'cape-file)
  (add-to-list 'completion-at-point-functions #'cape-dabbrev))

(provide 'init-completion)
