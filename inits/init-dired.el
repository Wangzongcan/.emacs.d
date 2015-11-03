;; dired
(require 'ls-lisp)
(setq ls-lisp-dirs-first t
      ls-lisp-ignore-case t
      dired-use-ls-dired nil
      ls-lisp-use-insert-directory-program nil)

;; dired+
(require 'dired+)

;; dired-single
(require 'dired-single)
(setq single-use-magic-buffer t
      dired-single-magic-buffer-name "*dired*")

(define-key dired-mode-map (kbd "RET") 'dired-single-buffer)

(add-hook 'dired-mode-hook #'dired-single-toggle-buffer-name)

(provide 'init-dired)
