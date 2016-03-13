;; encoding
(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")

;; startup
(setq inhibit-startup-screen t)

;; lockfiles
(setq create-lockfiles nil)

;; bell
(setq visible-bell t
      ring-bell-function #'ignore)

;; tab
(setq tab-always-indent 'complete)
(setq-default indent-tabs-mode nil)

;; final newline
(setq require-final-newline t)

;; auto revert
(global-auto-revert-mode 1)
(setq auto-revert-verbose nil
      global-auto-revert-non-file-buffers t)

;; backup
(setq backup-inhibited t
      make-backup-files nil
      auto-save-default nil
      delete-auto-save-files t)

;; minibuffer
(setq echo-keystrokes 0.1)
(fset 'yes-or-no-p 'y-or-n-p)

(add-hook 'focus-out-hook (lambda () (save-some-buffers t)))

(provide 'emacs-editor)
