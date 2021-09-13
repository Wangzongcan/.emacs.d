(when (display-graphic-p)
  ;; PATH
  (let* ((extra-paths '("/usr/local/bin" "/opt/homebrew/bin" "~/.asdf/shims"))
         (paths (mapconcat 'identity extra-paths ":")))
    (setenv "PATH" (concat paths ":" (getenv "PATH")))
    (setq-default exec-path (append extra-paths exec-path)))

  ;; native-comp
  (setenv "LIBRARY_PATH" "/usr/local/opt/libgccjit/lib/gcc/11")
  (setq native-comp-async-report-warnings-errors nil)

  ;; UI
  (setq ns-use-proxy-icon nil)

  ;; Keybindings
  (unbind-key "s-t"))

(provide 'init-macos)
