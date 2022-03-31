;; Encoding
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)

;; Exec Path
(when (and *is-a-mac* (display-graphic-p))
  (let* ((extra-paths '("/usr/local/bin" "/opt/homebrew/bin" "~/.asdf/shims"))
         (paths (mapconcat 'identity extra-paths ":")))
    (setenv "PATH" (concat paths ":" (getenv "PATH")))
    (setq-default exec-path (append extra-paths exec-path))))

;; Native comp
(when (fboundp 'native-comp-available-p)
  (setq native-comp-async-report-warnings-errors nil))

;; Confirm
(fset 'yes-or-no-p 'y-or-n-p)

;; Bell
(setq ring-bell-function #'ignore)

;; Startup
(setq inhibit-startup-screen t
      initial-scratch-message nil
      initial-major-mode 'fundamental-mode)

;; GCMH
(use-package gcmh
  :hook (after-init . gcmh-mode)
  :custom
  (gcmh-idle-delay 5)
  (gcmh-high-cons-threshold 16777216))

;; No Littering
(use-package no-littering
  :demand t)

(provide 'init-basic)
