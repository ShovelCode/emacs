(defun average-of-integers (integer-list)
  "Compute the average of a list of integers."
  (if (null integer-list)
      (error "The list is empty, cannot compute average.")
    (let ((sum 0)
          (count 0))
      (dolist (elem integer-list)
        (setq sum (+ sum elem))
        (setq count (+ count 1)))
      (/ (float sum) count))))

;; Test the function
(message "Average: %s" (average-of-integers '(1 2 3 4 5)))  ;; Output: Average: 3.0
(message "Average: %s" (average-of-integers '(10 20 30)))   ;; Output: Average: 20.0
