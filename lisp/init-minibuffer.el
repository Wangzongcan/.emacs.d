;; Minibuffer
(setq echo-keystrokes 0.02
      enable-recursive-minibuffers t)

;; Do not allow the cursor in the minibuffer prompt
(setq minibuffer-prompt-properties
      '(read-only t cursor-intangible t face minibuffer-prompt))
(add-hook 'minibuffer-setup-hook #'cursor-intangible-mode)

;; Orderless
(use-package orderless
  :custom
  (completion-styles '(substring orderless)))

;; Vertico
(use-package vertico
  :hook (after-init . vertico-mode))

;; Consult
(use-package consult
  :bind (("C-s" . consult-line)
         ("C-x b" . consult-buffer))
  :config
  (setq consult-project-root-function
        (lambda ()
          (when-let (project (project-current))
            (car (project-roots project))))))

;; Embark
(use-package embark
  :bind (:map minibuffer-local-map
         ("C-." . embark-act)
         ("C-c C-o" . 'embark-export))
  :custom
  (prefix-help-command #'embark-prefix-help-command))

(use-package embark-consult
  :after (embark consult)
  :demand t
  :hook
  (embark-collect-mode . consult-preview-at-point-mode))

(provide 'init-minibuffer)
