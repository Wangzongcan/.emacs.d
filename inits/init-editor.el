(setq tab-always-indent 'complete)
(setq-default indent-tabs-mode nil)

(setq require-final-newline t)
(setq-default truncate-lines t)

(delete-selection-mode t)

(global-auto-revert-mode t)
(setq auto-revert-verbose nil
      global-auto-revert-non-file-buffers t)

(setq custom-file (concat user-emacs-directory "custom.el"))
(if (file-exists-p custom-file)
    (load custom-file)
  (write-region "" nil custom-file))

;; recentf
(require 'recentf)
(add-hook 'after-init-hook #'recentf-mode)

;; uniquify
(require 'uniquify)
(setq
 uniquify-separator "/"
 uniquify-after-kill-buffer-p t
 uniquify-buffer-name-style 'forward
 uniquify-ignore-buffers-re "^\\*")

;; whitespace
(require 'whitespace)
(setq whitespace-style '(face tab-mark trailing empty))
(add-hook 'before-save-hook 'whitespace-cleanup)

(add-hook 'focus-out-hook (lambda () (save-some-buffers t)))

(provide 'init-editor)
