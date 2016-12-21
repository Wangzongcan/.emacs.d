(setq custom-file
      (expand-file-name "custom.el" user-cache-directory))

(setq whitespace-style '(face empty tabs trailing))

(setq-default
 auto-save-default nil
 auto-save-list-file-prefix nil
 backup-inhibited t
 delete-selection-mode t
 indent-tabs-mode nil
 make-backup-files nil
 use-dialog-box nil
 require-final-newline t
 truncate-lines t)

(fset 'yes-or-no-p 'y-or-n-p)

(global-auto-revert-mode)
(setq auto-revert-verbose nil
      global-auto-revert-non-file-buffers t)

;; paren
(show-paren-mode 1)
(setq show-paren-delay 0)

;; uniquify
(setq uniquify-separator "/"
      uniquify-after-kill-buffer-p t
      uniquify-buffer-name-style 'forward
      uniquify-ignore-buffers-re "^\\*")

;; recentf
(recentf-mode 1)
(setq-default recentf-save-file
              (expand-file-name "recentf" user-cache-directory))

;; hippie-expand
(global-set-key (kbd "M-/") 'hippie-expand)

;; minibuffer
(defun my-minibuffer-setup-hook ()
  (setq gc-cons-threshold most-positive-fixnum))

(defun my-minibuffer-exit-hook ()
  (setq gc-cons-threshold 800000))

(add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
(add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)

(add-hook 'after-save-hook #'whitespace-cleanup)

(provide 'init-editing)
