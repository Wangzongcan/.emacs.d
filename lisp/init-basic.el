;; Encoding
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)

;; Exec Path
(let* ((extra-paths '("~/.local/bin" "~/.local/share/mise/shims"))
       (conditional-paths (if *is-a-mac* '("/usr/local/bin" "/opt/homebrew/bin") nil))
       (extra-paths (append extra-paths conditional-paths))
       (paths (mapconcat 'identity extra-paths ":")))
  (setenv "PATH" (concat paths ":" (getenv "PATH")))
  (setq-default exec-path (append extra-paths exec-path)))

;; Native comp
(when (fboundp 'native-comp-available-p)
  (setq native-comp-async-report-warnings-errors nil))

(setq read-process-output-max (* 1024 1024))

;; Confirm
(fset 'yes-or-no-p 'y-or-n-p)

;; Bell
(setq ring-bell-function #'ignore)

;; Startup
(setq inhibit-startup-screen t
      initial-scratch-message nil
      initial-major-mode 'fundamental-mode)

;; Proxy
(let ((proxy-url (concat proxy-host ":" proxy-port)))
  (setq url-proxy-services
        `(("http" . ,proxy-url)
          ("https" . ,proxy-url)
          ("no_proxy" . "^\\(localhost\\|192.168.*\\|10.*\\)"))))

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
