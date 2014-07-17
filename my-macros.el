;;;;;;;;;;;;;;;;;;;;; MACROS ;;;;;;;;;;;;;;;;;;;;;

(fset 'ack-js-regex
      "--type=js ")
(define-key minibuffer-local-map (kbd "C-c j") 'ack-js-regex)


(defun untabify-and-indent-buffer ()
  (interactive)
  (progn
    (untabify (point-min) (point-max))
    (indent-region (point-min) (point-max))
    )
  )

(defun tabify-and-indent-buffer ()
  (interactive)
  (progn
    (tabify (point-min) (point-max))
    (indent-region (point-min) (point-max))
    )
  )





(defun open-line-and-indent ()
  (interactive)
  (progn
    (newline-and-indent)
    (previous-line)
    (end-of-line)
    (indent-according-to-mode)
    ))

(global-set-key (kbd "C-o") 'open-line-and-indent)
