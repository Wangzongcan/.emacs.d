(setq package-enable-at-startup nil)
(package-initialize)

(load-file (concat
            user-emacs-directory
            "inits/init-paths.el"))

(require 'inits)
(require 'modules)
(require 'langs)
