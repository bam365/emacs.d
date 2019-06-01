(provide 'conf-company)

(global-company-mode)
(setq company-tooltip-limit 10)
(setq company-dabbrev-downcase 0)
(setq company-idle-delay nil)
(setq company-echo-delay 0)
(setq company-minimum-prefix-length 2)
(setq company-require-match nil)
(setq company-selection-wrap-around t)
(setq company-tooltip-align-annotations t)
;; (setq company-tooltip-flip-when-above t)
(setq company-transformers '(company-sort-by-occurrence)) ; weight by frequency
(define-key company-active-map (kbd "M-n") nil)
(define-key company-active-map (kbd "M-p") nil)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-active-map (kbd "TAB") 'company-complete-common-or-cycle)
(define-key company-active-map (kbd "<tab>") 'company-complete-common-or-cycle)
(define-key company-active-map (kbd "S-TAB") 'company-select-previous)
(define-key company-active-map (kbd "<backtab>") 'company-select-previous)
