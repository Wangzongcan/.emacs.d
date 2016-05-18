(require 'cask)
(cask-initialize)

(require 'pallet)
(pallet-mode t)

(package-initialize)

;; use-package
(when (not (package-installed-p 'use-package))
  (package-install 'use-package))

(defconst my/cache-directory
  (file-name-as-directory (concat user-emacs-directory ".cache")))
(make-directory my/cache-directory t)

(use-package el-init
  :ensure t
  :init
  (el-init-load (expand-file-name "inits" user-emacs-directory)
                :subdirectories '("." "core" "ext" "lang")))
