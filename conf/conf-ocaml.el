(provide 'conf-ocaml)

(defun conf-tuareg ()
  (electric-indent-mode 0))

(add-hook 'tuareg-mode-hook 'conf-tuareg)

(add-hook 'tuareg-mode-hook 'tuareg-imenu-set-imenu)
(setq auto-mode-alist
      (append '(("\\.ml[ily]?$" . tuareg-mode)
                ("\\.topml$" . tuareg-mode))
              auto-mode-alist))


(autoload 'utop-minor-mode "utop" "Minor mode for utop" t)
(add-hook 'tuareg-mode-hook 'utop-minor-mode)
(add-hook 'tuareg-mode-hook 'merlin-mode)
(setq merlin-use-auto-complete-mode t)
(setq utop-command "opam config exec -- utop -emacs")

(add-hook 'tuareg-mode-hook 'set-ocaml-keys)

(defun set-ocaml-keys ()
    (define-key evil-normal-state-map (kbd "SPC m t") 'merlin-type-enclosing)
    (define-key evil-normal-state-map (kbd "SPC m g") 'merlin-jump)
    (define-key evil-normal-state-map (kbd "SPC m r l") 'utop-eval-buffer))
