(require 'cask "/usr/local/opt/cask/cask.el")
(cask-initialize)

(require 'pallet)

(require 'init-loader)
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load)
