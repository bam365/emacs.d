(provide 'conf-ocaml)

(defun conf-tuareg ()
  (electric-indent-mode 0))

(add-hook 'tuareg-mode-hook 'conf-tuareg)
