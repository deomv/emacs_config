;;; blink.el --- Flash cursor

;; Copyright (C) 1997 Martin Ebourne
;; All rights reserved
;;
;; $Id: blink.el 781 2004-12-07 15:21:41Z martin $

;;; Commentary:

;; (blink-enable) to activate cursor flashing in order to help make it more
;; visible.

;;; Code:


;; User configurable variables

(defvar blink-wait-time 3
  "*Time in seconds to wait after user input before starting to flash the
cursor.")

(defvar blink-show-time 1.5
  "*Time in seconds to flash the cursor on for.")

(defvar blink-hide-time 0.5
  "*Time in seconds to flash the cursor off for.")


;; User interface functions

;;;###autoload
(defun blink-enable ()
  "Enable cursor flashing."
  (interactive)
  (add-hook 'post-command-hook 'blink-reset)
  )

;;;###autoload
(defun blink-disable ()
  "Disable cursor flashing."
  (interactive)
  (remove-hook 'post-command-hook 'blink-reset)
  (blink-cancel-timers)
  )


;; Internal variables

(defvar blink-show-handle nil)
(defvar blink-hide-handle nil)


;; Internal functions

(defun blink-show ()
  "Show the cursor."
  (internal-show-cursor nil t)
  )

(defun blink-hide ()
  "Hide the cursor."
  (internal-show-cursor nil nil)

  ;; Start up a timeout to show it again
  (setq blink-show-handle (run-with-timer blink-hide-time nil 'blink-show))
  )

(defun blink-cancel-timers ()
  "Cancel any blink timers and make sure the cursor is visible."
  (if blink-show-handle
      (cancel-timer blink-show-handle))
  (if blink-hide-handle
      (cancel-timer blink-hide-handle))
  (blink-show)
  )

(defun blink-reset ()
  "Restart cursor flashing."
  (blink-cancel-timers)

  ;; Start up a new repeating timer
  (setq blink-hide-handle (run-with-timer blink-wait-time (+ blink-hide-time blink-show-time)
					    'blink-hide))
  )

(provide 'blink)
