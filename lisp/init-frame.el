;; Frame

;; UI
(when *is-a-mac*
  (setq ns-use-proxy-icon nil)

  (push '(ns-transparent-titlebar . t) default-frame-alist))

;;; Cursor
(blink-cursor-mode -1)

;;; Modeline
(column-number-mode +1)

;;; Dialog box
(setq use-dialog-box nil)

;;; Tooltips
(use-package tooltip
  :straight (:type built-in)
  :if window-system
  :init (tooltip-mode -1))

;; Modeline
(use-package doom-modeline
  :hook (after-init . doom-modeline-mode)
  :custom
  (doom-modeline-height 1)
  (doom-modeline-icon nil))

(provide 'init-frame)
