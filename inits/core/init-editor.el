;; encoding
(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")

(setq visible-bell t
      ring-bell-function #'ignore)

;; tab
(setq tab-always-indent 'complete)
(setq-default indent-tabs-mode nil)

;; final newline
(setq require-final-newline t)

(delete-selection-mode t)

;; auto revert
(global-auto-revert-mode 1)
(setq auto-revert-verbose nil
      global-auto-revert-non-file-buffers t)

(fset 'yes-or-no-p 'y-or-n-p)

(setq echo-keystrokes 0.1)
(eval-after-load 'minibuffer
  '(progn
     (lexical-let ((default-threshold gc-cons-threshold))
       (defun my/minibuffer-gc-setup-hook ()
         (setq gc-cons-threshold most-positive-fixnum))
       (add-hook 'minibuffer-setup-hook #'my/minibuffer-gc-setup-hook)
       ;; When exit, set back to default threshold
       (defun my/minibuffer-gc-exit-hook ()
         (setq gc-cons-threshold default-threshold))
       (add-hook 'minibuffer-exit-hook #'my/minibuffer-gc-exit-hook))))

(add-hook 'focus-out-hook (lambda () (save-some-buffers t)))

(provide 'init-editor)
