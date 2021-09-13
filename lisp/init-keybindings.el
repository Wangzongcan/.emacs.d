(use-package general
  :demand t
  :config
  (with-eval-after-load 'evil
    (general-evil-setup)

    (general-nmap
      :keymaps 'override
      :prefix "SPC"

      "SPC" 'execute-extended-command

      "jj" 'avy-goto-char-timer
      "jl" 'avy-goto-line

      "pp" 'project-switch-project
      "pd" 'project-find-dir
      "pf" 'project-find-file
      "pb" 'project-switch-to-buffer

      "gs" 'magit-status
      "gt" 'git-timemachine)))

(provide 'init-keybindings)
