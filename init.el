;; require cl
(eval-when-compile (require 'cl))

;; cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)
;; pallet
(require 'pallet)
(pallet-mode t)

;; path
(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'load-path "~/.emacs.d/config")
(setenv "PATH" (concat "/usr/local/bin" ":" (getenv "PATH")))

;; el-init
(el-init-load "~/.emacs.d/inits"
              :subdirectories '("." "core" "ext" "lang")
              :wrappers '(el-init-require/record-error
                          el-init-require/record-eval-after-load-error))
