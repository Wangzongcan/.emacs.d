;; GC
(setq gc-cons-threshold (* 200 1024 1024))

;; cask
(require 'cask)
(cask-initialize)
(add-to-list 'auto-mode-alist '("Cask$" . emacs-lisp-mode))

(require 'pallet)
(pallet-mode t)

;; package
(package-initialize)

;; use-package
(when (not (package-installed-p 'use-package))
  (package-install 'use-package))

;; custom.el
(setq custom-file (concat user-emacs-directory "custom.el"))
(if (file-exists-p custom-file)
    (load custom-file)
  (write-region "" nil custom-file))

;; load-path
(add-to-list 'load-path (concat user-emacs-directory "core/"))
(add-to-list 'load-path (concat user-emacs-directory "enhanced/"))
(add-to-list 'load-path (concat user-emacs-directory "modules/"))

(load-file (concat user-emacs-directory "core/emacs-core.el"))
(load-file (concat user-emacs-directory "enhanced/emacs-enhanced.el"))
(load-file (concat user-emacs-directory "modules/emacs-modules.el"))
