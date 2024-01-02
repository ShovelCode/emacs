(defun my-postgres-query (query)
  "Run a Postgres query and return the results as a string."
  (with-output-to-string
    (shell-command (concat "psql -d dbname -c \"" query "\""))))

(setq results (my-postgres-query "SELECT * FROM mytable"))
