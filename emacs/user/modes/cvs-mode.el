;; Emacs configuration file
;; Setup for cvs-mode/pcl-cvs-mode
;; Written by Martin Ebourne
;; $Id: cvs-mode.el 725 2004-03-04 22:10:48Z martin $

;(load "pcl-cvs-startup")
;(setq cvs-cvsroot (getenv "CVSROOT"))
;(setq cvs-auto-remove-handled t)
(add-hook 'cvs-mode-hook
	   (function (lambda ()
		       (local-set-key "\C-m" 'cvs-mode-find-file)
		       )))
