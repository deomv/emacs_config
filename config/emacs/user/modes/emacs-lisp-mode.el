;; Emacs configuration file
;; Setup for emacs-lisp-mode
;; Written by Martin Ebourne
;; $Id: emacs-lisp-mode.el 725 2004-03-04 22:10:48Z martin $

;; For sawfish lisp (librep)
(setq auto-mode-alist
      (append '(("\\.jl\\'"   . emacs-lisp-mode)
		) auto-mode-alist))
