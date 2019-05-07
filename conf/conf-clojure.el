(provide 'conf-clojure)
(define-key evil-normal-state-map (kbd "SPC m r s") 'cider-jack-in)
(define-key evil-normal-state-map (kbd "SPC m r f") 'cider-load-file)
(define-key evil-normal-state-map (kbd "SPC m r d") 'cider-load-all-files)
(define-key evil-normal-state-map (kbd "SPC m r b") 'cider-load-buffer-and-switch-to-repl-buffer)
(define-key evil-normal-state-map (kbd "SPC m r r") 'cider-ns-refresh)
(define-key evil-normal-state-map (kbd "SPC m r n") 'cider-repl-set-ns)
(define-key evil-normal-state-map (kbd "SPC m e e") 'cider-pprint-eval-last-sexp)
(define-key evil-normal-state-map (kbd "SPC m e f") 'cider-pprint-eval-defun-at-point)
(define-key evil-normal-state-map (kbd "SPC m t t") 'cider-test-run-test)
(define-key evil-normal-state-map (kbd "SPC m t r") 'cider-test-rerun-test)
(define-key evil-normal-state-map (kbd "SPC m t n") 'cider-test-run-ns-tests)
(define-key evil-normal-state-map (kbd "SPC m t s") 'cider-test-show-report)
(define-key evil-normal-state-map (kbd "SPC m d") 'cider-doc)