(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(tooltip-mode -1)
(blink-cursor-mode -1)

(let ((no-border '(internal-border-width . 0)))
  (add-to-list 'default-frame-alist no-border)
  (add-to-list 'initial-frame-alist no-border))

(setq frame-resize-pixelwise t)

(set-face-attribute 'default nil :font "Monaco 12")
(dolist (charset '(kana han cjk-misc bopomofo gb18030))
  (set-fontset-font "fontset-default" charset "PingFang SC 14"))

(setq inhibit-startup-screen t
      initial-scratch-message "")

(setq visible-bell t
      ring-bell-function #'ignore)

(setq echo-keystrokes 0.1)
(setq minibuffer-prompt-properties
      '(read-only t point-entered minibuffer-avoid-prompt face minibuffer-prompt))

(line-number-mode 1)
(column-number-mode 1)

(provide 'init-gui)
