;;-----------------------------------------------------------------------------
;; PATH
;;-----------------------------------------------------------------------------
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(setq exec-path (append '("/usr/local/bin") exec-path))

(setenv "LANG" "en_US.UTF-8")
(prefer-coding-system 'utf-8)

;;-----------------------------------------------------------------------------
;; auto-save and backup
;;-----------------------------------------------------------------------------
(setq backup-inhibited t)
(setq create-lockfiles nil)
(setq auto-save-default nil)
(setq auto-save-list-file-name nil)
(setq auto-save-list-file-prefix nil)

(setq visible-bell t)
(setq ring-bell-function #'ignore)

(setq echo-keystrokes 0.1)

(setq-default indent-tabs-mode nil)

(blink-cursor-mode -1)

(global-auto-revert-mode t)
(setq auto-revert-verbose nil)
(setq global-auto-revert-non-file-buffers t)

(add-hook 'minibuffer-setup-hook #'set-max-gc-cons-threshold)
(add-hook 'minibuffer-exit-hook #'set-default-gc-cons-threshold)

(fset 'yes-or-no-p 'y-or-n-p)
(setq confirm-kill-emacs 'y-or-n-p)

(provide 'init-editing)
