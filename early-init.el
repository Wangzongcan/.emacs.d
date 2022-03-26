;;; early-init.el ---  -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(setq gc-cons-threshold most-positive-fixnum)

(setq package-enable-at-startup nil)

(when (boundp 'load-prefer-newer)
  (setq load-prefer-newer t))

;; UI
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)
(push '(internal-border-width . 0) default-frame-alist)
(push '(font . "Sarasa Mono SC-12") default-frame-alist)

;; file name handler alist
(let ((old-file-name-handler-alist file-name-handler-alist))
  (setq-default file-name-handler-alist nil)
  (defun my/reset-file-name-handler-alist ()
    (setq file-name-handler-alist
          (delete-dups (append file-name-handler-alist
                               old-file-name-handler-alist))))
  (add-hook 'emacs-startup-hook #'my/reset-file-name-handler-alist))

(provide 'early-init)

;;; early-init.el ends here
