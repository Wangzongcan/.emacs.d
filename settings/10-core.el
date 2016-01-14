(setq gc-cons-threshold (* 100 1024 1024))
(setq load-prefer-newer t)

(setq create-lockfiles nil)

(setq inhibit-startup-screen t)

(setq visible-bell t
      ring-bell-function #'ignore)

;; Tab
(setq tab-always-indent 'complete)
(setq-default tab-width 4
              indent-tabs-mode nil)

(setq global-mark-ring-max 5000
      mark-ring-max 5000
      require-final-newline t)

(setq kill-ring-max 5000
      kill-whole-line t)

(setq echo-keystrokes 0.1)

(fset 'yes-or-no-p 'y-or-n-p)

;; Encoding
(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")

(global-auto-revert-mode)

(add-hook 'focus-out-hook (lambda () (save-some-buffers t)))

(provide '10-core)
