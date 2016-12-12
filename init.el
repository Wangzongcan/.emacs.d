;; (package-initialize)

(defconst default/gc-cons-threshold gc-cons-threshold)
(setq gc-cons-threshold most-positive-fixnum)
(add-hook 'after-init-hook
          (lambda () (setq gc-cons-threshold default/gc-cons-threshold)))

(load-file (expand-file-name "inits/init-paths.el" user-emacs-directory))

(require 'inits)
(require 'modules)
(require 'langs)
