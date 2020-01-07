;; Emacs function file
;; Swap case of a character
;; Written by Martin Ebourne
;; $Id: swap-case.el 725 2004-03-04 22:10:48Z martin $

;;;###autoload
(defun swap-case (&optional arg)
  "Swap case of character after point and advance point"
  (interactive "p")
  (while (> arg 0)
    (let* ((current (char-after))
	   (lower (downcase current))
	   (upper (upcase current)))
      (if (eq current lower)
	  (setq current upper)
	(setq current lower))
      (insert current)
      (delete-char 1)
      )
    (setq arg (1- arg))
    )
  )
