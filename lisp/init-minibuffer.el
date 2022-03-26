(my-leader-def 'normal 'override
  "SPC" 'execute-extended-command)

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

(provide 'init-minibuffer)
