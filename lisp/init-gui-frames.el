(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'set-scroll-bar-mode) (set-scroll-bar-mode nil))

(setq frame-resize-pixelwise t)

(let ((no-border '(internal-border-width . 0)))
  (add-to-list 'default-frame-alist no-border)
  (add-to-list 'initial-frame-alist no-border))

(setq inhibit-startup-screen t)
(setq initial-scratch-message "")

(setq use-dialog-box nil)
(setq use-file-dialog nil)

(when window-system
  (set-face-attribute 'default nil :font "M+ 1m 12")
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
                      charset (font-spec :family "PingFang SC" :size 12))))

(provide 'init-gui-frames)
