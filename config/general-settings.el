(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")

(global-auto-revert-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)

(setq
 visible-bell t
 ring-bell-function #'ignore

 tab-always-indent 'complete

 auto-save-default nil
 make-backup-files nil
 create-lockfiles nil
  
 vc-follow-symlinks t

 gc-cons-threshold (* 128 1024 1024)
 )

(require 'recentf)
(setq recentf-max-menu-items 24
      recentf-max-saved-items 128
      recentf-save-file (expand-file-name "recentf" cache-dir))
(global-set-key "\C-x\C-r" 'recentf-open-files)
(recentf-mode 1)

;; ls-lisp
(require 'ls-lisp)
(setq ls-lisp-dirs-first t
      ls-lisp-ignore-case t
      dired-use-ls-dired nil
      ls-lisp-use-insert-directory-program nil)

(provide 'general-settings)
