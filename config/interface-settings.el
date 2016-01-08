(tooltip-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)

(show-paren-mode 1)

(setq
 frame-resize-pixelwise t

 inhibit-startup-message t
 initial-scratch-message nil

 echo-keystrokes 0.1
 )

(setq-default
 indent-tabs-mode nil
 )

(when window-system
  (set-face-attribute 'default nil :font "m+ 1m 12"))

(provide 'interface-settings)
