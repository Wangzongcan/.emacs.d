;; dired
(require 'ls-lisp)
(setq ls-lisp-dirs-first t
      ls-lisp-ignore-case t
      dired-use-ls-dired nil
      ls-lisp-use-insert-directory-program nil)

(add-hook 'dired-mode-hook
          (lambda ()
            (dired-single-toggle-buffer-name)))

(use-package dired+)

;; dired-single
(use-package dired-single
  :defer t
  :init
  (setq single-use-magic-buffer t
        dired-single-magic-buffer-name "*dired*")
  :config
  (bind-key "RET" 'dired-single-buffer dired-mode-map))

(provide 'init-dired)
