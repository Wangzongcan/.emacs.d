(require 'cask)
(cask-initialize)

(require 'pallet)
(pallet-mode t)

(package-initialize)

;; use-package
(when (not (package-installed-p 'use-package))
  (package-install 'use-package))

(defconst emacs-savefile-directory
  (file-name-as-directory (concat user-emacs-directory "savefile")))
(make-directory emacs-savefile-directory t)

(defconst emacs-backup-directory
  (file-name-as-directory (concat user-emacs-directory "backup")))
(make-directory emacs-backup-directory t)

(use-package el-init
  :ensure t
  :init
  (el-init-load (expand-file-name "inits" user-emacs-directory)
                :subdirectories '("." "core" "ext" "lang")))
