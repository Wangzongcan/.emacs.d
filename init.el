(require 'cask "/usr/local/opt/cask/cask.el")
(cask-initialize)

(require 'pallet)
(pallet-mode t)

(require 'init-loader)
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load)
