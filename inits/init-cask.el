(require 'cask "~/.cask/cask.el")
(cask-initialize)

(add-to-list 'exec-path "/usr/local/bin")
(setenv "PATH" (concat "/usr/local/bin" ":" (getenv "PATH")))

(require 'pallet)
(pallet-mode t)

(provide 'init-cask)
