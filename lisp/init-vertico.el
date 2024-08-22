;; Orderless
(use-package orderless
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion))))
  (orderless-component-separator #'orderless-escapable-split-on-space))

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
         ("C-c C-o" . embark-export))
  :custom
  (prefix-help-command #'embark-prefix-help-command))

(use-package embark-consult
  :after (embark consult)
  :demand t
  :hook (embark-collect-mode . consult-preview-at-point-mode))

;; Marginalia
(use-package marginalia
  :hook (after-init . marginalia-mode))

;; Support Pinyin
(use-package pinyinlib
  :after orderless
  :autoload pinyinlib-build-regexp-string
  :init
  (defun completion--regex-pinyin (str)
    (orderless-regexp (pinyinlib-build-regexp-string str)))
  (add-to-list 'orderless-matching-styles 'completion--regex-pinyin))

(provide 'init-vertico)
