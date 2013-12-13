(defun cqql/load-files (directory)
  (mapc
   (lambda (file)
     (load file))
   (-filter (lambda (file) (not (s-ends-with? "." file))) (directory-files directory t))))

(defun cqql/go-to-beginning-of-line-dwim ()
  (interactive)
  "Toggle point between beginning of line and first non-whitespace character"
  (let ((prev-pos (point)))
    (back-to-indentation)
    (when (= prev-pos (point))
      (move-beginning-of-line nil))))

(defun cqql/duplicate-line ()
  (interactive)
  "Duplicate the current line and move point down"
  (let ((pos (point)))
    (move-beginning-of-line nil)
    (kill-line)
    (yank)
    (open-line 1)
    (next-line)
    (yank)
    (goto-char pos)
    (next-line)))

(defun cqql/open-line ()
  (interactive)
  "Create a new line below and put point into it"
  (move-end-of-line nil)
  (newline-and-indent))

(defun cqql/open-line-above ()
  (interactive)
  "Create a new line above point and move point into it"
  (move-beginning-of-line nil)
  (newline)
  (previous-line)
  (indent-according-to-mode))

(defmacro cqql/define-keys (keymap &rest bindings)
  `(progn
     ,@(-map
        (lambda (binding) `(define-key ,keymap (kbd ,(car binding)) ,(cadr binding)))
        bindings)))

(defmacro cqql/define-global-keys (&rest bindings)
  `(progn
     ,@(-map
        (lambda (binding) `(global-set-key (kbd ,(car binding)) ,(cadr binding)))
        bindings)))

(defmacro cqql/define-global-evil-keys (mode &rest bindings)
  (let ((keymap (intern (format "evil-%s-state-map" mode))))
    `(cqql/define-keys ,keymap ,@bindings)))

(provide 'cqql-utils)
