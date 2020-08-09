(use-package esup)

(use-package no-littering
  :demand t)

(use-package gcmh
  :hook (after-init . gcmh-mode))

(use-package snails
  :disabled
  :ensure nil
  :straight (:host github :repo "manateelazycat/snails" :depth 1 :no-byte-compile t))

(provide 'init-utils)
