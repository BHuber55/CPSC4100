;; Brennan Huber
;; HW4

;; 1. Printing my name.
;; works.
(define (yourname)
   '"Brennan Huber")

;; 2. Slope
;; works.
(define (ax+b a x b)
   (+ b (* a x)))

;; 3. Distance between two points.
;; works.
(define (distance lst1 lst2)
   (sqrt (+ (expt 2 (- (car (cdr lst1)) (car lst1))) (expt 2 (- (car (cdr lst2)) (car lst2))))))

;; 4. Purge the list
;; works.
(define (purge w lst)
   (filter (lambda(x) (not (eq? x w)))
      lst))


;; 5. Counting Trues
;; works. LOL.
(define (count-trues lst)
   (- (length lst) (length (filter not lst))))

;; 6. Recursively build a list from n to 0
;; works.
(define (build-list x)
   (if (= x 0)
      '()
      (if(< x 0)
         (cons x (build-list (+ x 1)))
         (cons x (build-list (- x 1))))))

;; 7. Dot product of 2 vectors
;; works.
(define (dotproduct lst1 lst2)
   (if (eq? (length lst1) (length lst2))
      (apply + (map * lst1 lst2))
      #f))

;; 8. Multiples from x * y, so that it is y groups of x.
;; works.
(define (multiples x y)
   (map (lambda(z) (* x z)) (build-list y)))

;; 9. Running procedures from the command line.
;; works.
(define (run-cmd prcd arg)
   (cond
      ((eq? prcd 'plus)
         (apply + arg))
      ((eq? prcd 'times)
         (apply * arg))
      ((eq? prcd 'append)
         (apply string-append arg))
      ((eq? prcd 'cdr)
         (cdr arg))
      (#t arg)))

;; 10. Change upper case to lower, and vice versa
;; works.
(define (charflip str)
   (list->string (map convert (string->list str))))

;; for 10. works.
(define (convert c)
;; if the char is upper case, downcase it, else upcase it.
   (if (char-upper-case? c)
      (char-downcase c)
      (char-upcase c))
)
