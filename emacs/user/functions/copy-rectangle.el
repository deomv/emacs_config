;; Emacs function file
;; Copy rectangle to kill ring
;; Written by Martin Ebourne
;; $Id: copy-rectangle.el 725 2004-03-04 22:10:48Z martin $

;;;###autoload
(defun copy-rectangle (start end)
  "Save rectangle with corners at point and mark as last killed one.
Does not delete rectangle from buffer.
Calling from program, supply two args START and END, buffer positions.
But in programs you might prefer to use `delete-extract-rectangle'."
  (interactive "r")
  (setq killed-rectangle (extract-rectangle start end)))
