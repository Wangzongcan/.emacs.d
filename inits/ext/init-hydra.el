(use-package hydra
  :ensure t
  :init
  (defhydra hydra-master (:color blue :columns 8)
    "Hydra"
    ("p" hydra-projectile/body "projectile")
    ("r" hydra-projectile-rails/body "rails")
    ("ll" load-current-file "load current file")
    )

  (defhydra hydra-projectile (:color blue :columns 8)
    "Projectile"
    ("p" projectile-switch-project "switch project")
    ("f" projectile-find-file "find file")
    ("d" projectile-find-dir "find dir")
    ("b" projectile-switch-to-buffer "switch buffer")
    ("v" projectile-display-buffer "display buffer")
    ("<tab>" hydra-master/body "back"))

  (defhydra hydra-projectile-rails (:color blue :columns 8)
    "Rails"
    ("c" projectile-rails-find-controller "find controller")
    ("C" projectile-rails-find-current-controller "find current controller")
    ("m" projectile-rails-find-model "find model")
    ("M" projectile-rails-find-current-model "find current model")
    ("v" projectile-rails-find-view "find view")
    ("V" projectile-rails-find-current-view "find current view")
    ("h" projectile-rails-find-helper "find helper")
    ("H" projectile-rails-find-current-helper "find current helper")
    ("gr" projectile-rails-goto-routes "goto routes")))

(provide 'init-hydra)
