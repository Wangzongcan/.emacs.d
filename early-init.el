(setq gc-cons-threshold most-positive-fixnum)

(setq package-enable-at-startup nil)

(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(internal-border-width . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)
(push '(font . "Sarasa Mono SC-12") default-frame-alist)

(setq frame-inhibit-implied-resize t)

(when (featurep 'ns)
  (setq ns-use-proxy-icon nil)
  (push '(ns-transparent-titlebar . t) default-frame-alist))
