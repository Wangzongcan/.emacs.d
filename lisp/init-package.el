;; Straight.el
(setq straight-cache-autoloads t
      straight-use-package-by-default t
      straight-vc-git-default-clone-depth 1
      straight-check-for-modifications '(check-on-save find-when-checking))

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Use Package
(straight-use-package 'use-package)

(eval-and-compile
  (setq use-package-always-defer t)
  (setq use-package-expand-minimally t))

(eval-when-compile
  (require 'use-package))

(use-package bind-key)

(provide 'init-package)
