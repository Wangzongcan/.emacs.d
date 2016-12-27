;; (package-initialize)

(defconst default/gc-cons-threshold gc-cons-threshold)

(defun max-gc-cons-threshold()
  (setq gc-cons-threshold most-positive-fixnum))

(defun default-gc-cons-threshold()
  (setq gc-cons-threshold default/gc-cons-threshold))

(max-gc-cons-threshold)
(add-hook 'after-init-hook #'default-gc-cons-threshold)

(load-file (expand-file-name "inits/init-paths.el" user-emacs-directory))

(require 'inits)
(require 'modules)
(require 'langs)
