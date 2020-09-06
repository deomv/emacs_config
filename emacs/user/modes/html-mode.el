;; Emacs configuration file
;; Setup for html-mode
;; Written by Martin Ebourne
;; $Id: html-mode.el 725 2004-03-04 22:10:48Z martin $

;; HTML mode
(add-hook 'html-mode-hook
	  (function (lambda ()
		      (setq fill-column 77)
		      (auto-fill-mode t)
		      )))
