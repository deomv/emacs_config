;; Emacs configuration file
;; Setup for asm-mode
;; Written by Martin Ebourne
;; $Id: asm-mode.el 725 2004-03-04 22:10:48Z martin $

(add-hook 'asm-mode-hook
	  (function (lambda ()
		      (local-set-key ";"    'self-insert-command)
		      (local-set-key ":"    'self-insert-command)
		      (local-set-key "\C-m" 'newline)
		      (set (make-local-variable 'dabbrev-case-fold-search) nil)
		      (set (make-local-variable 'dabbrev-case-replace) nil)
		      (add-hook 'write-contents-hooks 'eliminate-trailing-spaces)
		      )))
