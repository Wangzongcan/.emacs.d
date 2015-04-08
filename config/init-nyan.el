(package-install 'nyan-mode)

(require 'nyan-mode)

(setq nyan-bar-length 16)

(nyan-mode 1)
(nyan-start-animation)

(provide 'init-nyan)
