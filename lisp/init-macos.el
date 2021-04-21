(when (eq system-type 'darwin)
  (when (display-graphic-p)
    ;; Path
    (let* ((extra-paths '("/usr/local/bin" "~/.asdf/shims"))
           (paths (mapconcat 'identity extra-paths ":")))
      (setenv "PATH" (concat paths ":" (getenv "PATH")))
      (setq-default exec-path (append extra-paths exec-path)))

    (setenv "LIBRARY_PATH" "/usr/local/opt/libgccjit/lib/gcc/11")

    ;; Title Bar
    (setq ns-use-proxy-icon nil)
    (use-package ns-auto-titlebar
      :hook (after-init . ns-auto-titlebar-mode))))

(provide 'init-macos)
